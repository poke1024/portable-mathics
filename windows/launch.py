# assuming a completely clean user installation, this will (re)set everything needed
# to run jupyter with an imathics kernel and widgets.

# https://github.com/ipython-contrib/jupyter_contrib_nbextensions/wiki/Home-4.x-(Jupyter)
# https://github.com/jupyter/notebook/issues/389

import notebook
notebook.nbextensions.enable_nbextension('notebook', 'jupyter-js-widgets/extension')

# taken from imathics/setup.py

import sys

kernel_json = {
    'argv': [sys.executable,
             '-m', 'imathics',
             '-f', '{connection_file}'],
    'display_name': 'mathics',
    'language': 'Mathematica',
    'name': 'mathics',
}

def install_kernelspec():
    from ipykernel.kernelspec import write_kernel_spec
    from jupyter_client.kernelspec import KernelSpecManager

    kernel_spec_manager = KernelSpecManager()

    print('Writing kernel spec')
    kernel_spec_path = write_kernel_spec(overrides=kernel_json)

    print('Installing kernel spec ' + kernel_spec_path)
    try:
        kernel_spec_manager.install_kernel_spec(
            kernel_spec_path,
            kernel_name=kernel_json['name'],
            user=True)
    except Exception as e:
        print(str(e.args))
        print('Failed to install kernel spec')
    else:
        return

install_kernelspec()

from notebook import notebookapp
notebookapp.main()
