
# exit on error, verbose mode
set -ex

# script's own dir
MY_DIR="$(dirname "$0")"
cd $MY_DIR/
echo PWD=$PWD
WORKDIR=$PWD
pip3 install mkdocs
# Generate Pythong API docs
# ... Pull python source from ambianic-core repo  ...
# pip3  install pydoc-markdown
# cd src
# Extract API docs from source to markdown files
# pydocmd simple ambianic++ ambianic.pipeline++ ambianic.pipeline.ai++ \
#  ambianic.pipeline.avsource++ ambianic.webapp++ > "$WORKDIR/docs/docs-md/raw-python-api.md"
cd $WORKDIR/docs
mkdocs build -f "$WORKDIR/docs/mkdocs.yml"
# mkdocs gh-deploy
