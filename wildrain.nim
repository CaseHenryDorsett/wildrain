# ---------------------------------------------------------------------
#  WildRain - The FAST protocol test data generator.
#  Copyright (C) 2015  Ivan Kokhan
#
#  This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program.  If not, see <http://www.gnu.org/licenses/>.
# ---------------------------------------------------------------------

# ---------------------------------------------------------------------
# Import Lib.
# ---------------------------------------------------------------------
import math

# ---------------------------------------------------------------------
# Internal procedures.
# ---------------------------------------------------------------------
proc starting() =
  echo("WaildRain  Copyright (C) 2015  Ivan Kokhan")
  echo("This program comes with ABSOLUTELY NO WARRANTY; for details type `show w'.")
  echo("This is free software, and you are welcome to redistribute it")
  echo("under certain conditions; type `show c' for details.\n")
  echo("HS-Test Start!")

proc ending() =
  echo("WaildRain Stop!")

# ---------------------------------------------------------------------
# Main procedure.
# ---------------------------------------------------------------------
proc main() =
  const
    min: int = 0
    max: int = 441000

    ampl: float = 32000.0
    freq: float = 100.0
    rate: float = 44100.0
    size: float = rate * 10.0

  type
    SignalsVector = array[min..max, int]

  var
    indicator: int
    vector: SignalsVector

  starting()

  for i in min..max:
    var a: float = 2.0 * PI * toFloat(i) * freq/rate
    var b: int = toInt(ampl * sin(a))

    vector[i] = b

  for i in min..max:
    echo(vector[i])

  ending()

# ---------------------------------------------------------------------
# Program.
# ---------------------------------------------------------------------
main()









