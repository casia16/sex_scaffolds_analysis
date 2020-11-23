input_dir=$1
output_dir=$2
mkdir $output_dir/idxstats_for_sex_scaffolds
while read -r sample_path <&3; do
s=${sample_path%.bam}
sample=${s##*/}
echo $sample
samtools idxstats $sample_path > $output_dir/idxstat_for_sex_scaffolds/$sample.idxstat
done 3< <(ls  $input_dir/*.bam)

