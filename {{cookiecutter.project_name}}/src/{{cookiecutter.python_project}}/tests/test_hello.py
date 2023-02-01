"""Sample unit test code"""

import unittest
import hello


class TestHello(unittest.TestCase):
    """Test for hello class."""
    @classmethod
    def test_hello_world(cls):
        """Test for hello world."""
        assert hello.main() == "Hello World!"
