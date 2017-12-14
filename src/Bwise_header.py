#!/usr/bin/env python3
# -*- coding: utf-8 -*-
'''
œ*****************************************************************************
 *   BWISE :
 *   Authors: Antoine Limasset,Camille Marchet
 *   Contact: antoine.limasset@gmail.com
 *   Source: https://github.com/Malfoy/BWISE
 *
 *
 *  This program is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU Affero General Public License as
 *  published by the Free Software Foundation, either version 3 of the
 *  License, or (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU Affero General Public License for more details.
 *
 *  You should have received a copy of the GNU Affero General Public License
 *  along with this program.  If not, see <http://www.gnu.org/licenses/>.
*****************************************************************************/
'''

import os
import re
import sys
import time
import shlex, subprocess
import struct
import shutil
import os.path
import tempfile
import argparse
import threading
import multiprocessing
import glob
# from random import randint
from operator import itemgetter
from subprocess import Popen, PIPE, STDOUT



#The Absolute path where your binaries are