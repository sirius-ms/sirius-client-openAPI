# THIS FILE IS NOT AUTO GENERATED AND MIGHT NEED TO BE CHANGED WHEN API ENDPOINTS CHANGE

"""Deprecated aliases for API methods that were renamed by the SIRIUS API.

SIRIUS API 3.2 corrected the ``get*Paged`` operationIds to ``get*Page``. The HTTP routes are
unchanged, so this is purely a source level problem: every existing script that calls
``get_compounds_paged(...)`` raises ``AttributeError`` against the new SDK. This module puts the old
names back as thin wrappers, so code written for the previous release keeps working for one more
release while it migrates.

Same idea as the Java SDK's hand written ``*ApiCompat`` classes, adapted to Python: there the
aliases are subclasses, here they are attached to the generated classes at import time, because
users get the API classes from ``PySirius`` directly and never name a subclass.

Two of the renamed operations also gained a ``search_query`` parameter, at *different* positions
(second for ``get_compounds_page``, fifth for ``get_aligned_features_page``). The wrappers therefore
bind the caller's positional arguments to the **old** parameter names and forward everything by
keyword, so old positional call sites keep binding the values they always did.

``FutureWarning`` rather than ``DeprecationWarning``: SDK users are end users running scripts, and
Python hides ``DeprecationWarning`` outside ``__main__`` by default - a warning nobody sees does not
help anyone migrate.
"""

import warnings

from PySirius.api.compounds_api import CompoundsApi
from PySirius.api.features_api import FeaturesApi
from PySirius.api.jobs_api import JobsApi

#: (class, old name, new name, the parameters the old method had, in order)
RENAMED_IN_API_3_2 = (
    (CompoundsApi, "get_compounds_paged", "get_compounds_page",
     ("project_id", "page", "size", "sort", "ms_data_search_prepared", "opt_fields",
      "opt_fields_features")),
    (FeaturesApi, "get_aligned_features_paged", "get_aligned_features_page",
     ("project_id", "page", "size", "sort", "ms_data_search_prepared", "opt_fields")),
    (FeaturesApi, "get_formula_candidates_paged", "get_formula_candidates_page",
     ("project_id", "aligned_feature_id", "page", "size", "sort", "ms_data_search_prepared",
      "opt_fields")),
    (FeaturesApi, "get_structure_candidates_paged", "get_structure_candidates_page",
     ("project_id", "aligned_feature_id", "page", "size", "sort", "opt_fields")),
    (FeaturesApi, "get_structure_candidates_by_formula_paged",
     "get_structure_candidates_by_formula_page",
     ("project_id", "aligned_feature_id", "formula_id", "page", "size", "sort", "opt_fields")),
    (FeaturesApi, "get_de_novo_structure_candidates_paged",
     "get_de_novo_structure_candidates_page",
     ("project_id", "aligned_feature_id", "page", "size", "sort", "opt_fields")),
    (FeaturesApi, "get_de_novo_structure_candidates_by_formula_paged",
     "get_de_novo_structure_candidates_by_formula_page",
     ("project_id", "aligned_feature_id", "formula_id", "page", "size", "sort", "opt_fields")),
    (FeaturesApi, "get_spectral_library_matches_paged", "get_spectral_library_matches_page",
     ("project_id", "aligned_feature_id", "page", "size", "sort", "min_shared_peaks",
      "min_similarity", "inchi_key", "opt_fields")),
    (JobsApi, "get_jobs_paged", "get_jobs_page",
     ("project_id", "page", "size", "sort", "opt_fields")),
)

#: the generator emits three public methods per operation; all of them were renamed
VARIANTS = ("", "_with_http_info", "_without_preload_content")

REMOVED_IN = "the next major SDK release"


def _make_alias(old_name, new_name, old_parameters):
    def alias(self, *args, **kwargs):
        warnings.warn(
            f"{type(self).__name__}.{old_name}() was renamed to {new_name}() in SIRIUS API 3.2 and "
            f"will be removed in {REMOVED_IN}.",
            FutureWarning, stacklevel=2,
        )
        if len(args) > len(old_parameters):
            raise TypeError(f"{old_name}() takes at most {len(old_parameters)} positional "
                            f"arguments but {len(args)} were given")
        bound = dict(zip(old_parameters, args))
        clashes = sorted(bound.keys() & kwargs.keys())
        if clashes:
            raise TypeError(f"{old_name}() got multiple values for argument(s) "
                            f"{', '.join(clashes)}")
        bound.update(kwargs)
        return getattr(self, new_name)(**bound)

    alias.__name__ = old_name
    alias.__qualname__ = old_name
    alias.__doc__ = (f"Deprecated alias for :meth:`{new_name}`.\n\n"
                     f"Renamed in SIRIUS API 3.2; scheduled for removal in {REMOVED_IN}. "
                     f"Positional arguments still bind to {', '.join(old_parameters)}.")
    return alias


def install_deprecated_aliases():
    """Attach the pre-3.2 method names to the generated API classes.

    Idempotent, and silently skips an alias whose target does not exist - if a later API release
    renames these operations again, the SDK should not fail to import over a compatibility shim.

    :return: the names that were installed, mostly so tests can assert on them
    """
    installed = []
    for api_class, old_name, new_name, old_parameters in RENAMED_IN_API_3_2:
        for variant in VARIANTS:
            old, new = old_name + variant, new_name + variant
            if not hasattr(api_class, new) or hasattr(api_class, old):
                continue
            setattr(api_class, old, _make_alias(old, new, old_parameters))
            installed.append(f"{api_class.__name__}.{old}")
    return installed
