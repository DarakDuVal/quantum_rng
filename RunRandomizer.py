from pathlib import Path
from qdk import qsharp

this_dir = Path(__file__).parent
qsharp.init(project_root=this_dir)

print(qsharp.eval('RunRandomizer.Main()'))
