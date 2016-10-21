# patch jupyterthemes to work properly with imathics graphics output
# (i.e. it doesn't get clipped vertically).

import os
import glob
import jupyterthemes

def patch_css(filename):
	print('patching %s' % filename)

	with open(filename, 'r') as f:
		css = f.read()

	# remove problem part from the ".MathJax nobr>span.math>span" rule.
	css = css.replace('font-size: 110% !important;', '')

	with open(filename, 'w') as f:
		f.write(css)

package_dir = os.path.dirname(os.path.realpath(jupyterthemes.__file__))
styles_dir = os.path.join(package_dir, 'styles')
compiled_styles_dir = os.path.join(styles_dir, 'compiled')

for filename in glob.iglob(os.path.join(compiled_styles_dir, '*.css')):
	patch_css(filename)

patch_css(os.path.join(package_dir, 'layout', 'mathjax.css'))
