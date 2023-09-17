

datasets_source_path="https://cs.stanford.edu/people/karpathy/deepimagesent/"
datasets="flickr8k flickr30k coco"

cd datasets
for dataset in $datasets; do
    echo "${datasets_source_path}${dataset}.zip"
    wget "${datasets_source_path}${dataset}.zip"
    echo "unzipping"
    unzip "${dataset}.zip"
    echo "unzipped"
    rm -f "${dataset}.zip"
done
cd ../