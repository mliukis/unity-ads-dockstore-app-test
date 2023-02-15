#!/usr/bin/env cwl-runner

# ML: test Dockstore registration

cwlVersion: v1.0
class: CommandLineTool
label: Bogus test workflow
doc: Tests workflow registration within Dockstore

requirements:
  DockerRequirement:
    dockerPull: hello-world:latest


inputs: []

outputs:
  - id: out
    type: string
    outputBinding:
      glob: out.txt
      loadContents: true
      outputEval: $(self[0].contents)
stdout: out.txt
