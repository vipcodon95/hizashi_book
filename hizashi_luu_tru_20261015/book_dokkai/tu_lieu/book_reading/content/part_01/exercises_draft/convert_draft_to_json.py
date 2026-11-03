"""
Script chuyển đổi đã được chuyển lên: ../../exercises_common/convert_draft_to_json.py

Sử dụng:
    python ../../exercises_common/convert_draft_to_json.py lesson_XX_draft.md ../exercises/lesson_XX.json
"""
import sys
import os

# Redirect to the common script
common_dir = os.path.join(os.path.dirname(__file__), '..', '..', 'exercises_common')
sys.path.insert(0, os.path.abspath(common_dir))
from convert_draft_to_json import main

if __name__ == '__main__':
    main()
