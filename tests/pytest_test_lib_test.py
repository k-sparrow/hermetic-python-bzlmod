from src.pytest_test_lib import files

import pytest
import sys


def test_files():
    assert isinstance(files([]), list)

if __name__ == "__main__":
    import pytest
    raise SystemExit(pytest.main([__file__] + sys.argv[1:]))