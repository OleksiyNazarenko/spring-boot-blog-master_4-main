
import robot
from robot import run
from robot.run import run_cli
import os

if __name__ == "__main__":
    current_dir = os.path.dirname(os.path.abspath(__file__))
    robot_file = os.path.join(current_dir, 'TC_login.robot')
    run_cli([robot_file])
