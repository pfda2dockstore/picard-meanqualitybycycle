baseCommand: []
class: CommandLineTool
cwlVersion: v1.0
id: picard-meanqualitybycycle
inputs:
  input_bam:
    doc: Input BAM file
    inputBinding:
      position: 1
      prefix: --input_bam
    type: File
  options:
    doc: Additional options
    inputBinding:
      position: 2
      prefix: --options
    type: string?
label: Picard MeanQualityByCycle
outputs:
  mean_qual_by_cycle_chart:
    doc: A file (with .pdf extension) to write the chart to
    outputBinding:
      glob: mean_qual_by_cycle_chart/*
    type: File
  mean_qual_by_cycle_text:
    doc: Output text file
    outputBinding:
      glob: mean_qual_by_cycle_text/*
    type: File
requirements:
- class: DockerRequirement
  dockerOutputDirectory: /data/out
  dockerPull: pfda2dockstore/picard-meanqualitybycycle:1
s:author:
  class: s:Person
  s:name: Adam Halstead
