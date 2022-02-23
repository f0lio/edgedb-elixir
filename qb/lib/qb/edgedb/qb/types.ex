defmodule(QB.EdgeDB.QB.Types) do
  [
    (
      @types %{
        "6cd8c5f0-8a10-11ec-9e45-2ba0c6a86f2d" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [
            %{id: "6c7a7341-8a10-11ec-a7ad-3f5a92d98a26"},
            %{id: "6d849f36-8a10-11ec-9fd0-0d13e4601f2c"}
          ],
          enum_values: [],
          id: "6cd8c5f0-8a10-11ec-9e45-2ba0c6a86f2d",
          intersection_of: [],
          is_abstract: false,
          kind: "object",
          material_id: [],
          name: "schema::Module",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "70913227-8a10-11ec-ab7a-3fb0e1f3f58d" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [
            %{id: "6dd14eb7-8a10-11ec-b180-493af67bf9e1"},
            %{id: "6df135ee-8a10-11ec-a8d9-99c01dadf85e"}
          ],
          enum_values: [],
          id: "70913227-8a10-11ec-ab7a-3fb0e1f3f58d",
          intersection_of: [],
          is_abstract: false,
          kind: "object",
          material_id: [],
          name: "schema::Operator",
          pointers: [
            %{
              has_default: false,
              id: "70975ab8-8a10-11ec-a9e9-dd69c17f41a5",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "operator_kind",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "6c77bd5a-8a10-11ec-83d6-6321f11c8a2d"
            },
            %{
              has_default: true,
              id: "70979d4a-8a10-11ec-99a2-a79b5225c56c",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "abstract",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000109"
            },
            %{
              has_default: true,
              id: "7098216f-8a10-11ec-8feb-eb1993837ca1",
              is_exclusive: false,
              is_writable: false,
              kind: "property",
              name: "is_abstract",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000109"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "6df135ee-8a10-11ec-a8d9-99c01dadf85e" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "6c7a7341-8a10-11ec-a7ad-3f5a92d98a26"}],
          enum_values: [],
          id: "6df135ee-8a10-11ec-a8d9-99c01dadf85e",
          intersection_of: [],
          is_abstract: true,
          kind: "object",
          material_id: [],
          name: "schema::VolatilitySubject",
          pointers: [
            %{
              has_default: true,
              id: "6df4124e-8a10-11ec-9f4e-6bb304c7e5f9",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "volatility",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "6c78662c-8a10-11ec-bcac-a9d500860e59"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "71623468-8a10-11ec-b28a-7bada3f5ad0b" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "6d849f36-8a10-11ec-9fd0-0d13e4601f2c"}],
          enum_values: [],
          id: "71623468-8a10-11ec-b28a-7bada3f5ad0b",
          intersection_of: [],
          is_abstract: true,
          kind: "object",
          material_id: [],
          name: "sys::SystemObject",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "6c79c94b-8a10-11ec-b4bd-5f942eec71f4" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "663d299d-8a10-11ec-8771-93e1a9b330f4"}],
          enum_values: ["SetOfType", "OptionalType", "SingletonType"],
          id: "6c79c94b-8a10-11ec-b4bd-5f942eec71f4",
          intersection_of: [],
          is_abstract: false,
          kind: "scalar",
          material_id: [],
          name: "schema::TypeModifier",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "716199b4-8a10-11ec-b7a6-614310539b29" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "663d299d-8a10-11ec-8771-93e1a9b330f4"}],
          enum_values: ["dev", "alpha", "beta", "rc", "final"],
          id: "716199b4-8a10-11ec-b7a6-614310539b29",
          intersection_of: [],
          is_abstract: false,
          kind: "scalar",
          material_id: [],
          name: "sys::VersionStage",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "00000000-0000-0000-0000-000000000102" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "6630e5b7-8a10-11ec-856b-650e11726a69"}],
          enum_values: [],
          id: "00000000-0000-0000-0000-000000000102",
          intersection_of: [],
          is_abstract: false,
          kind: "scalar",
          material_id: [],
          name: "std::bytes",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "663a95c4-8a10-11ec-b0ee-4f15729863f1" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "6635a1ee-8a10-11ec-8b19-afdb38091631"}],
          enum_values: [],
          id: "663a95c4-8a10-11ec-b0ee-4f15729863f1",
          intersection_of: [],
          is_abstract: true,
          kind: "scalar",
          material_id: [],
          name: "std::anynumeric",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "6ffb3e67-8a10-11ec-9d89-5f1de95272c4" => %{
          array_element_id: [],
          backlink_stubs: [
            %{
              id: "625fd0f0-91d9-11ec-a293-4b2dc324d335",
              is_exclusive: false,
              kind: "link",
              name: "<properties",
              real_cardinality: "Many",
              target_id: "6c0851d6-8a10-11ec-87e9-c3313f204cf8"
            }
          ],
          backlinks: [
            %{
              id: "704fc6a2-8a10-11ec-ac12-5b7a16d5676f",
              is_exclusive: false,
              kind: "link",
              name: "<properties[is schema::Link]",
              real_cardinality: "Many",
              stub: "properties",
              target_id: "6fb26983-8a10-11ec-bb96-c5decb666559"
            },
            %{
              id: "7060327e-8a10-11ec-8cfa-236f994ceb57",
              is_exclusive: false,
              kind: "link",
              name: "<properties[is schema::ObjectType]",
              real_cardinality: "Many",
              stub: "properties",
              target_id: "6f60f97a-8a10-11ec-89c8-bfc584a2e355"
            }
          ],
          bases: [%{id: "6ec179d6-8a10-11ec-bdac-c7e157d08163"}],
          enum_values: [],
          id: "6ffb3e67-8a10-11ec-9d89-5f1de95272c4",
          intersection_of: [],
          is_abstract: false,
          kind: "object",
          material_id: [],
          name: "schema::Property",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "6d9b4271-8a10-11ec-9398-c1997d33e06f" => %{
          array_element_id: [],
          backlink_stubs: [
            %{
              id: "625fd0f0-91d9-11ec-a293-4b2dc324d335",
              is_exclusive: false,
              kind: "link",
              name: "<ancestors",
              real_cardinality: "Many",
              target_id: "6c0851d6-8a10-11ec-87e9-c3313f204cf8"
            },
            %{
              id: "625fd0f0-91d9-11ec-a293-4b2dc324d335",
              is_exclusive: false,
              kind: "link",
              name: "<bases",
              real_cardinality: "Many",
              target_id: "6c0851d6-8a10-11ec-87e9-c3313f204cf8"
            }
          ],
          backlinks: [
            %{
              id: "6da05dcb-8a10-11ec-98c0-6598d3d1c521",
              is_exclusive: false,
              kind: "link",
              name: "<bases[is schema::InheritingObject]",
              real_cardinality: "Many",
              stub: "bases",
              target_id: "6d9b4271-8a10-11ec-9398-c1997d33e06f"
            },
            %{
              id: "6da102b2-8a10-11ec-beb0-9fd17e90a362",
              is_exclusive: false,
              kind: "link",
              name: "<ancestors[is schema::InheritingObject]",
              real_cardinality: "Many",
              stub: "ancestors",
              target_id: "6d9b4271-8a10-11ec-9398-c1997d33e06f"
            },
            %{
              id: "6e0a1d7d-8a10-11ec-a93f-5f2789a12e55",
              is_exclusive: false,
              kind: "link",
              name: "<bases[is schema::Constraint]",
              real_cardinality: "Many",
              stub: "bases",
              target_id: "6e01f436-8a10-11ec-9117-0f2b60a3b4d5"
            },
            %{
              id: "6e0aff30-8a10-11ec-a8d1-79cf730a6e4f",
              is_exclusive: false,
              kind: "link",
              name: "<ancestors[is schema::Constraint]",
              real_cardinality: "Many",
              stub: "ancestors",
              target_id: "6e01f436-8a10-11ec-9117-0f2b60a3b4d5"
            },
            %{
              id: "6f267d47-8a10-11ec-9098-9784fba80bf6",
              is_exclusive: false,
              kind: "link",
              name: "<bases[is schema::ScalarType]",
              real_cardinality: "Many",
              stub: "bases",
              target_id: "6f1f91f9-8a10-11ec-8c7d-619274614b24"
            },
            %{
              id: "6f273d07-8a10-11ec-a5fd-59f4286437c3",
              is_exclusive: false,
              kind: "link",
              name: "<ancestors[is schema::ScalarType]",
              real_cardinality: "Many",
              stub: "ancestors",
              target_id: "6f1f91f9-8a10-11ec-8c7d-619274614b24"
            },
            %{
              id: "6ec75023-8a10-11ec-8971-9db68074134f",
              is_exclusive: false,
              kind: "link",
              name: "<bases[is schema::Pointer]",
              real_cardinality: "Many",
              stub: "bases",
              target_id: "6ec179d6-8a10-11ec-bdac-c7e157d08163"
            },
            %{
              id: "6ec80dea-8a10-11ec-93cc-99a6bb64d078",
              is_exclusive: false,
              kind: "link",
              name: "<ancestors[is schema::Pointer]",
              real_cardinality: "Many",
              stub: "ancestors",
              target_id: "6ec179d6-8a10-11ec-bdac-c7e157d08163"
            },
            %{
              id: "7001161e-8a10-11ec-ab5b-7bd042583aab",
              is_exclusive: false,
              kind: "link",
              name: "<bases[is schema::Property]",
              real_cardinality: "Many",
              stub: "bases",
              target_id: "6ffb3e67-8a10-11ec-9d89-5f1de95272c4"
            },
            %{
              id: "7001b330-8a10-11ec-87c9-bbd8aead2311",
              is_exclusive: false,
              kind: "link",
              name: "<ancestors[is schema::Property]",
              real_cardinality: "Many",
              stub: "ancestors",
              target_id: "6ffb3e67-8a10-11ec-9d89-5f1de95272c4"
            },
            %{
              id: "6fb7f849-8a10-11ec-a10c-6f27e5d384fd",
              is_exclusive: false,
              kind: "link",
              name: "<bases[is schema::Link]",
              real_cardinality: "Many",
              stub: "bases",
              target_id: "6fb26983-8a10-11ec-bb96-c5decb666559"
            },
            %{
              id: "6fb8a640-8a10-11ec-b724-4b231a49eed1",
              is_exclusive: false,
              kind: "link",
              name: "<ancestors[is schema::Link]",
              real_cardinality: "Many",
              stub: "ancestors",
              target_id: "6fb26983-8a10-11ec-bb96-c5decb666559"
            },
            %{
              id: "6f67663d-8a10-11ec-9067-d7b32aa6b597",
              is_exclusive: false,
              kind: "link",
              name: "<bases[is schema::ObjectType]",
              real_cardinality: "Many",
              stub: "bases",
              target_id: "6f60f97a-8a10-11ec-89c8-bfc584a2e355"
            },
            %{
              id: "6f6813d2-8a10-11ec-8006-613b120e7ff2",
              is_exclusive: false,
              kind: "link",
              name: "<ancestors[is schema::ObjectType]",
              real_cardinality: "Many",
              stub: "ancestors",
              target_id: "6f60f97a-8a10-11ec-89c8-bfc584a2e355"
            }
          ],
          bases: [%{id: "6c83561f-8a10-11ec-bc8a-c757b42dec44"}],
          enum_values: [],
          id: "6d9b4271-8a10-11ec-9398-c1997d33e06f",
          intersection_of: [],
          is_abstract: true,
          kind: "object",
          material_id: [],
          name: "schema::InheritingObject",
          pointers: [
            %{
              has_default: false,
              id: "6da05dcb-8a10-11ec-98c0-6598d3d1c521",
              is_exclusive: false,
              is_writable: true,
              kind: "link",
              name: "bases",
              pointers: [
                %{
                  id: "6da0d875-8a10-11ec-ae90-e56e033daa80",
                  is_writable: true,
                  kind: "property",
                  name: "@index",
                  real_cardinality: "AtMostOne",
                  target_id: "00000000-0000-0000-0000-000000000105"
                }
              ],
              real_cardinality: "Many",
              target_id: "6d9b4271-8a10-11ec-9398-c1997d33e06f"
            },
            %{
              has_default: false,
              id: "6da102b2-8a10-11ec-beb0-9fd17e90a362",
              is_exclusive: false,
              is_writable: true,
              kind: "link",
              name: "ancestors",
              pointers: [
                %{
                  id: "6da18265-8a10-11ec-afda-9d809feac279",
                  is_writable: true,
                  kind: "property",
                  name: "@index",
                  real_cardinality: "AtMostOne",
                  target_id: "00000000-0000-0000-0000-000000000105"
                }
              ],
              real_cardinality: "Many",
              target_id: "6d9b4271-8a10-11ec-9398-c1997d33e06f"
            },
            %{
              has_default: false,
              id: "6da1b97e-8a10-11ec-be05-65a40e1d5592",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "inherited_fields",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "05f91774-15ea-9001-038e-092c1cad80af"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "59e264aa-8124-adf5-92fd-c1e96f826bc9" => %{
          array_element_id: "00000000-0000-0000-0000-00000000010f",
          backlink_stubs: [],
          backlinks: [],
          bases: [],
          enum_values: [],
          id: "59e264aa-8124-adf5-92fd-c1e96f826bc9",
          intersection_of: [],
          is_abstract: false,
          kind: "array",
          material_id: [],
          name: "array<std::json>",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "00000000-0000-0000-0000-00000000010a" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "6630e5b7-8a10-11ec-856b-650e11726a69"}],
          enum_values: [],
          id: "00000000-0000-0000-0000-00000000010a",
          intersection_of: [],
          is_abstract: false,
          kind: "scalar",
          material_id: [],
          name: "std::datetime",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "c15e18c1-91d9-11ec-bc66-693a16a07f31" => %{
          array_element_id: [],
          backlink_stubs: [
            %{
              id: "625fd0f0-91d9-11ec-a293-4b2dc324d335",
              is_exclusive: false,
              kind: "link",
              name: "<profile",
              real_cardinality: "Many",
              target_id: "6c0851d6-8a10-11ec-87e9-c3313f204cf8"
            }
          ],
          backlinks: [
            %{
              id: "c161497a-91d9-11ec-81e6-5b551b684b4a",
              is_exclusive: true,
              kind: "link",
              name: "<profile[is Movie]",
              real_cardinality: "AtMostOne",
              stub: "profile",
              target_id: "c15f9041-91d9-11ec-842c-7db96eec4792"
            }
          ],
          bases: [%{id: "6c0de05d-8a10-11ec-82e8-6fc6431aec91"}],
          enum_values: [],
          id: "c15e18c1-91d9-11ec-bc66-693a16a07f31",
          intersection_of: [],
          is_abstract: false,
          kind: "object",
          material_id: [],
          name: "default::Profile",
          pointers: [
            %{
              has_default: false,
              id: "c15f772d-91d9-11ec-9f1b-450dd2057fea",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "plot_summary",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000101"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "c148c177-91d9-11ec-acab-f1387c995c49" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "6c0de05d-8a10-11ec-82e8-6fc6431aec91"}],
          enum_values: [],
          id: "c148c177-91d9-11ec-acab-f1387c995c49",
          intersection_of: [],
          is_abstract: true,
          kind: "object",
          material_id: [],
          name: "default::HasName",
          pointers: [
            %{
              has_default: false,
              id: "c14a0776-91d9-11ec-83de-cb8e81ae9e4a",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "name",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000101"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "8ab09b46-19b3-f179-85ae-5e1a1f465de8" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [],
          enum_values: [],
          id: "8ab09b46-19b3-f179-85ae-5e1a1f465de8",
          intersection_of: [],
          is_abstract: false,
          kind: "tuple",
          material_id: [],
          name:
            "tuple<major:std::int64, minor:std::int64, stage:sys::VersionStage, stage_no:std::int64, local:array<std|str>>",
          pointers: [],
          tuple_elements: [
            %{
              id: "d03a41e4-8a10-11ec-a267-93fd0f3d7603",
              name: "major",
              target_id: "00000000-0000-0000-0000-000000000105"
            },
            %{
              id: "d03a50bc-8a10-11ec-a267-63bf7d52d4e7",
              name: "minor",
              target_id: "00000000-0000-0000-0000-000000000105"
            },
            %{
              id: "d03a5328-8a10-11ec-a267-9b703589eb52",
              name: "stage",
              target_id: "716199b4-8a10-11ec-b7a6-614310539b29"
            },
            %{
              id: "d03a5530-8a10-11ec-a267-2323d064564b",
              name: "stage_no",
              target_id: "00000000-0000-0000-0000-000000000105"
            },
            %{
              id: "d03a5724-8a10-11ec-a267-f7f1f6974cd6",
              name: "local",
              target_id: "05f91774-15ea-9001-038e-092c1cad80af"
            }
          ],
          union_of: []
        },
        "b6dce0a9-a33c-8f05-943f-f7187bfabdce" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [],
          enum_values: [],
          id: "b6dce0a9-a33c-8f05-943f-f7187bfabdce",
          intersection_of: [],
          is_abstract: false,
          kind: "tuple",
          material_id: [],
          name: "tuple<std::int64, std::int64>",
          pointers: [],
          tuple_elements: [
            %{
              id: "c0c4a98e-8a10-11ec-a267-0be94ad73d28",
              name: "0",
              target_id: "00000000-0000-0000-0000-000000000105"
            },
            %{
              id: "c0c4b802-8a10-11ec-a267-f7322f33d9a2",
              name: "1",
              target_id: "00000000-0000-0000-0000-000000000105"
            }
          ],
          union_of: []
        },
        "6f016d3b-8a10-11ec-8a79-91a452a615bd" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "6d849f36-8a10-11ec-9fd0-0d13e4601f2c"}],
          enum_values: [],
          id: "6f016d3b-8a10-11ec-8a79-91a452a615bd",
          intersection_of: [],
          is_abstract: false,
          kind: "object",
          material_id: [],
          name: "schema::Alias",
          pointers: [
            %{
              has_default: false,
              id: "6f0617fb-8a10-11ec-bf2b-77bab41e962c",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "expr",
              pointers: [],
              real_cardinality: "One",
              target_id: "00000000-0000-0000-0000-000000000101"
            },
            %{
              has_default: false,
              id: "6f063cbf-8a10-11ec-acee-83d8c9cb6e4d",
              is_exclusive: false,
              is_writable: true,
              kind: "link",
              name: "type",
              pointers: [],
              real_cardinality: "One",
              target_id: "6c91fdfe-8a10-11ec-bacd-f11d47fae198"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "00000000-0000-0000-0000-000000000107" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "6638bd21-8a10-11ec-92fa-a1f2c208052b"}],
          cast_only_type: "00000000-0000-0000-0000-0000000001ff",
          enum_values: [],
          id: "00000000-0000-0000-0000-000000000107",
          intersection_of: [],
          is_abstract: false,
          kind: "scalar",
          material_id: [],
          name: "std::float64",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "6d362a1b-8a10-11ec-be37-b30418a69bcc" => %{
          array_element_id: [],
          backlink_stubs: [
            %{
              id: "625fd0f0-91d9-11ec-a293-4b2dc324d335",
              is_exclusive: false,
              kind: "link",
              name: "<element_types",
              real_cardinality: "Many",
              target_id: "6c0851d6-8a10-11ec-87e9-c3313f204cf8"
            }
          ],
          backlinks: [
            %{
              id: "6d4946b9-8a10-11ec-8087-73c70fa26631",
              is_exclusive: false,
              kind: "link",
              name: "<element_types[is schema::Tuple]",
              real_cardinality: "AtMostOne",
              stub: "element_types",
              target_id: "6d42ac80-8a10-11ec-9de3-a7a5e22f749b"
            }
          ],
          bases: [%{id: "6c0851d6-8a10-11ec-87e9-c3313f204cf8"}],
          enum_values: [],
          id: "6d362a1b-8a10-11ec-be37-b30418a69bcc",
          intersection_of: [],
          is_abstract: false,
          kind: "object",
          material_id: [],
          name: "schema::TupleElement",
          pointers: [
            %{
              has_default: false,
              id: "6d37f36b-8a10-11ec-acf4-c5129d8dc750",
              is_exclusive: false,
              is_writable: true,
              kind: "link",
              name: "type",
              pointers: [],
              real_cardinality: "One",
              target_id: "6c91fdfe-8a10-11ec-bacd-f11d47fae198"
            },
            %{
              has_default: false,
              id: "6d38615f-8a10-11ec-bb51-1d4d3a359cdd",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "name",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000101"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "338fc9bb-51be-b55d-b2f7-abe53ff0567f" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [],
          enum_values: [],
          id: "338fc9bb-51be-b55d-b2f7-abe53ff0567f",
          intersection_of: [],
          is_abstract: false,
          kind: "tuple",
          material_id: [],
          name: "tuple<std::str, std::int64>",
          pointers: [],
          tuple_elements: [
            %{
              id: "c3f0bdd4-91d9-11ec-9005-1749f638a14d",
              name: "0",
              target_id: "00000000-0000-0000-0000-000000000101"
            },
            %{
              id: "c3f0c662-91d9-11ec-9005-b355ecaeeb8c",
              name: "1",
              target_id: "00000000-0000-0000-0000-000000000105"
            }
          ],
          union_of: []
        },
        "6c773110-8a10-11ec-bb4a-6992c067e64b" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "663d299d-8a10-11ec-8771-93e1a9b330f4"}],
          enum_values: ["Restrict", "DeleteSource", "Allow", "DeferredRestrict"],
          id: "6c773110-8a10-11ec-bb4a-6992c067e64b",
          intersection_of: [],
          is_abstract: false,
          kind: "scalar",
          material_id: [],
          name: "schema::TargetDeleteAction",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "6d622c47-8a10-11ec-bab6-3ffcb1b91de8" => %{
          array_element_id: [],
          backlink_stubs: [
            %{
              id: "625fd0f0-91d9-11ec-a293-4b2dc324d335",
              is_exclusive: false,
              kind: "link",
              name: "<parents",
              real_cardinality: "Many",
              target_id: "6c0851d6-8a10-11ec-87e9-c3313f204cf8"
            }
          ],
          backlinks: [
            %{
              id: "6d6555a1-8a10-11ec-9dad-b52d894b130b",
              is_exclusive: false,
              kind: "link",
              name: "<parents[is schema::Delta]",
              real_cardinality: "Many",
              stub: "parents",
              target_id: "6d622c47-8a10-11ec-bab6-3ffcb1b91de8"
            }
          ],
          bases: [%{id: "6c7a7341-8a10-11ec-a7ad-3f5a92d98a26"}],
          enum_values: [],
          id: "6d622c47-8a10-11ec-bab6-3ffcb1b91de8",
          intersection_of: [],
          is_abstract: false,
          kind: "object",
          material_id: [],
          name: "schema::Delta",
          pointers: [
            %{
              has_default: false,
              id: "6d6555a1-8a10-11ec-9dad-b52d894b130b",
              is_exclusive: false,
              is_writable: true,
              kind: "link",
              name: "parents",
              pointers: [],
              real_cardinality: "Many",
              target_id: "6d622c47-8a10-11ec-bab6-3ffcb1b91de8"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "6ce66efb-8a10-11ec-94a5-e70471af7c4d" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "6c91fdfe-8a10-11ec-bacd-f11d47fae198"}],
          enum_values: [],
          id: "6ce66efb-8a10-11ec-94a5-e70471af7c4d",
          intersection_of: [],
          is_abstract: true,
          kind: "object",
          material_id: [],
          name: "schema::PrimitiveType",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "00000000-0000-0000-0000-000000000110" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [
            %{id: "663a95c4-8a10-11ec-b0ee-4f15729863f1"},
            %{id: "66364d12-8a10-11ec-b0bd-dba594fec9b3"}
          ],
          enum_values: [],
          id: "00000000-0000-0000-0000-000000000110",
          intersection_of: [],
          is_abstract: false,
          kind: "scalar",
          material_id: [],
          name: "std::bigint",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "7291cb6a-8a10-11ec-97d6-f100f3be2691" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "7268fc76-8a10-11ec-8ce8-45c375a2833a"}],
          enum_values: [],
          id: "7291cb6a-8a10-11ec-97d6-f100f3be2691",
          intersection_of: [],
          is_abstract: false,
          kind: "object",
          material_id: [],
          name: "cfg::Config",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "00000000-0000-0000-0000-000000000105" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "66364d12-8a10-11ec-b0bd-dba594fec9b3"}],
          cast_only_type: "00000000-0000-0000-0000-0000000001ff",
          enum_values: [],
          id: "00000000-0000-0000-0000-000000000105",
          intersection_of: [],
          is_abstract: false,
          kind: "scalar",
          material_id: [],
          name: "std::int64",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "70fcf368-8a10-11ec-901d-5d56207a3f8a" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [
            %{id: "6d849f36-8a10-11ec-9fd0-0d13e4601f2c"},
            %{id: "6c7a7341-8a10-11ec-a7ad-3f5a92d98a26"}
          ],
          enum_values: [],
          id: "70fcf368-8a10-11ec-901d-5d56207a3f8a",
          intersection_of: [],
          is_abstract: false,
          kind: "object",
          material_id: [],
          name: "schema::Extension",
          pointers: [
            %{
              has_default: false,
              id: "71c357a8-8a10-11ec-a97b-77871a489a2b",
              is_exclusive: true,
              is_writable: true,
              kind: "link",
              name: "package",
              pointers: [],
              real_cardinality: "One",
              target_id: "71a075c2-8a10-11ec-b931-ed6ae24a5f34"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "00000000-0000-0000-0000-000000000001" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [],
          enum_values: [],
          id: "00000000-0000-0000-0000-000000000001",
          intersection_of: [],
          is_abstract: false,
          kind: "unknown",
          material_id: [],
          name: "anytype",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "70b99db6-8a10-11ec-8d04-ff4067c35e44" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [
            %{id: "6d849f36-8a10-11ec-9fd0-0d13e4601f2c"},
            %{id: "6df135ee-8a10-11ec-a8d9-99c01dadf85e"}
          ],
          enum_values: [],
          id: "70b99db6-8a10-11ec-8d04-ff4067c35e44",
          intersection_of: [],
          is_abstract: false,
          kind: "object",
          material_id: [],
          name: "schema::Cast",
          pointers: [
            %{
              has_default: false,
              id: "70be8043-8a10-11ec-8fa0-a31397bac4b1",
              is_exclusive: false,
              is_writable: true,
              kind: "link",
              name: "from_type",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "6c91fdfe-8a10-11ec-bacd-f11d47fae198"
            },
            %{
              has_default: false,
              id: "70beef25-8a10-11ec-bd1c-9594ec5ca224",
              is_exclusive: false,
              is_writable: true,
              kind: "link",
              name: "to_type",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "6c91fdfe-8a10-11ec-bacd-f11d47fae198"
            },
            %{
              has_default: false,
              id: "70bf689d-8a10-11ec-8796-e595b9cec5cd",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "allow_implicit",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000109"
            },
            %{
              has_default: false,
              id: "70bf8da7-8a10-11ec-a7d8-15edda4a7801",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "allow_assignment",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000109"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "00000000-0000-0000-0000-000000000111" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "6630e5b7-8a10-11ec-856b-650e11726a69"}],
          enum_values: [],
          id: "00000000-0000-0000-0000-000000000111",
          intersection_of: [],
          is_abstract: false,
          kind: "scalar",
          material_id: [],
          name: "cal::relative_duration",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "00000000-0000-0000-0000-000000000101" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "6630e5b7-8a10-11ec-856b-650e11726a69"}],
          enum_values: [],
          id: "00000000-0000-0000-0000-000000000101",
          intersection_of: [],
          is_abstract: false,
          kind: "scalar",
          material_id: [],
          name: "std::str",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "7df42e9d-d082-076c-506e-e28d729f22be" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [],
          enum_values: [],
          id: "7df42e9d-d082-076c-506e-e28d729f22be",
          intersection_of: [],
          is_abstract: false,
          kind: "tuple",
          material_id: [],
          name:
            "tuple<major:std::int64, minor:std::int64, stage:std::str, stage_no:std::int64, local:array<std|str>>",
          pointers: [],
          tuple_elements: [
            %{
              id: "d0929ed4-8a10-11ec-a267-9306dc06d2f1",
              name: "major",
              target_id: "00000000-0000-0000-0000-000000000105"
            },
            %{
              id: "d092ace4-8a10-11ec-a267-dfbf2d55d0f5",
              name: "minor",
              target_id: "00000000-0000-0000-0000-000000000105"
            },
            %{
              id: "d092af00-8a10-11ec-a267-c3ee570637e4",
              name: "stage",
              target_id: "00000000-0000-0000-0000-000000000101"
            },
            %{
              id: "d092b0c2-8a10-11ec-a267-ab123f7c2045",
              name: "stage_no",
              target_id: "00000000-0000-0000-0000-000000000105"
            },
            %{
              id: "d092b27a-8a10-11ec-a267-631b743e6edd",
              name: "local",
              target_id: "05f91774-15ea-9001-038e-092c1cad80af"
            }
          ],
          union_of: []
        },
        "6c83561f-8a10-11ec-bc8a-c757b42dec44" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "6c7a7341-8a10-11ec-a7ad-3f5a92d98a26"}],
          enum_values: [],
          id: "6c83561f-8a10-11ec-bc8a-c757b42dec44",
          intersection_of: [],
          is_abstract: true,
          kind: "object",
          material_id: [],
          name: "schema::SubclassableObject",
          pointers: [
            %{
              has_default: true,
              id: "6c859136-8a10-11ec-8c22-03089ccdcece",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "abstract",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000109"
            },
            %{
              has_default: true,
              id: "6c8617de-8a10-11ec-9d38-114548d4a8e9",
              is_exclusive: false,
              is_writable: false,
              kind: "property",
              name: "is_abstract",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000109"
            },
            %{
              has_default: false,
              id: "6c86a460-8a10-11ec-8695-6bce4150eae6",
              is_exclusive: false,
              is_writable: false,
              kind: "property",
              name: "final",
              pointers: [],
              real_cardinality: "One",
              target_id: "00000000-0000-0000-0000-000000000109"
            },
            %{
              has_default: false,
              id: "6c875009-8a10-11ec-905e-c57205e9743b",
              is_exclusive: false,
              is_writable: false,
              kind: "property",
              name: "is_final",
              pointers: [],
              real_cardinality: "One",
              target_id: "00000000-0000-0000-0000-000000000109"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "c174c646-91d9-11ec-9da6-af81b3f79fd0" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "6c0de05d-8a10-11ec-82e8-6fc6431aec91"}],
          enum_values: [],
          id: "c174c646-91d9-11ec-9da6-af81b3f79fd0",
          intersection_of: [],
          is_abstract: false,
          kind: "object",
          material_id: [],
          name: "default::MovieShape",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "6c7a7341-8a10-11ec-a7ad-3f5a92d98a26" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "6c0851d6-8a10-11ec-87e9-c3313f204cf8"}],
          enum_values: [],
          id: "6c7a7341-8a10-11ec-a7ad-3f5a92d98a26",
          intersection_of: [],
          is_abstract: true,
          kind: "object",
          material_id: [],
          name: "schema::Object",
          pointers: [
            %{
              has_default: false,
              id: "6c7baaf1-8a10-11ec-9107-dfccd79f67ff",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "name",
              pointers: [],
              real_cardinality: "One",
              target_id: "00000000-0000-0000-0000-000000000101"
            },
            %{
              has_default: true,
              id: "6c7be621-8a10-11ec-81d1-5d3cfcafc894",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "internal",
              pointers: [],
              real_cardinality: "One",
              target_id: "00000000-0000-0000-0000-000000000109"
            },
            %{
              has_default: true,
              id: "6c7c3ec4-8a10-11ec-8f78-d538f81eba40",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "builtin",
              pointers: [],
              real_cardinality: "One",
              target_id: "00000000-0000-0000-0000-000000000109"
            },
            %{
              has_default: false,
              id: "6c7c79e4-8a10-11ec-92e3-f99479a7e796",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "computed_fields",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "05f91774-15ea-9001-038e-092c1cad80af"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "6c78662c-8a10-11ec-bcac-a9d500860e59" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "663d299d-8a10-11ec-8771-93e1a9b330f4"}],
          enum_values: ["Immutable", "Stable", "Volatile"],
          id: "6c78662c-8a10-11ec-bcac-a9d500860e59",
          intersection_of: [],
          is_abstract: false,
          kind: "scalar",
          material_id: [],
          name: "schema::Volatility",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "6e01f436-8a10-11ec-9117-0f2b60a3b4d5" => %{
          array_element_id: [],
          backlink_stubs: [
            %{
              id: "625fd0f0-91d9-11ec-a293-4b2dc324d335",
              is_exclusive: false,
              kind: "link",
              name: "<constraints",
              real_cardinality: "Many",
              target_id: "6c0851d6-8a10-11ec-87e9-c3313f204cf8"
            }
          ],
          backlinks: [
            %{
              id: "6e79882b-8a10-11ec-9c50-0dea88874597",
              is_exclusive: false,
              kind: "link",
              name: "<constraints[is schema::ConsistencySubject]",
              real_cardinality: "AtMostOne",
              stub: "constraints",
              target_id: "6e765f11-8a10-11ec-a861-d9b160ab5324"
            },
            %{
              id: "6f282e2c-8a10-11ec-92dd-2d0db10ee3ee",
              is_exclusive: false,
              kind: "link",
              name: "<constraints[is schema::ScalarType]",
              real_cardinality: "AtMostOne",
              stub: "constraints",
              target_id: "6f1f91f9-8a10-11ec-8c7d-619274614b24"
            },
            %{
              id: "6ec8ed5a-8a10-11ec-a831-315c15c8dd31",
              is_exclusive: false,
              kind: "link",
              name: "<constraints[is schema::Pointer]",
              real_cardinality: "AtMostOne",
              stub: "constraints",
              target_id: "6ec179d6-8a10-11ec-bdac-c7e157d08163"
            },
            %{
              id: "700295f9-8a10-11ec-bf77-c727b3e7bd96",
              is_exclusive: false,
              kind: "link",
              name: "<constraints[is schema::Property]",
              real_cardinality: "AtMostOne",
              stub: "constraints",
              target_id: "6ffb3e67-8a10-11ec-9d89-5f1de95272c4"
            },
            %{
              id: "6fb97e09-8a10-11ec-89db-8f5f6a2614d3",
              is_exclusive: false,
              kind: "link",
              name: "<constraints[is schema::Link]",
              real_cardinality: "AtMostOne",
              stub: "constraints",
              target_id: "6fb26983-8a10-11ec-bb96-c5decb666559"
            },
            %{
              id: "6f68f366-8a10-11ec-baca-13e0573c3504",
              is_exclusive: false,
              kind: "link",
              name: "<constraints[is schema::ObjectType]",
              real_cardinality: "AtMostOne",
              stub: "constraints",
              target_id: "6f60f97a-8a10-11ec-89c8-bfc584a2e355"
            }
          ],
          bases: [
            %{id: "6dd14eb7-8a10-11ec-b180-493af67bf9e1"},
            %{id: "6d9b4271-8a10-11ec-9398-c1997d33e06f"}
          ],
          enum_values: [],
          id: "6e01f436-8a10-11ec-9117-0f2b60a3b4d5",
          intersection_of: [],
          is_abstract: false,
          kind: "object",
          material_id: [],
          name: "schema::Constraint",
          pointers: [
            %{
              has_default: false,
              id: "6e06dde3-8a10-11ec-a2a5-0dc11cbf5b41",
              is_exclusive: false,
              is_writable: true,
              kind: "link",
              name: "params",
              pointers: [
                %{
                  id: "6e0759ee-8a10-11ec-84fb-212e3d85b3d9",
                  is_writable: true,
                  kind: "property",
                  name: "@index",
                  real_cardinality: "AtMostOne",
                  target_id: "00000000-0000-0000-0000-000000000105"
                },
                %{
                  id: "6e48afd8-8a10-11ec-9f05-e58cfccaf72f",
                  is_writable: true,
                  kind: "property",
                  name: "@value",
                  real_cardinality: "AtMostOne",
                  target_id: "00000000-0000-0000-0000-000000000101"
                }
              ],
              real_cardinality: "Many",
              target_id: "6dbacd17-8a10-11ec-afcb-17fc7726838f"
            },
            %{
              has_default: false,
              id: "6e48e5f8-8a10-11ec-ba92-35703bff1ca2",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "expr",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000101"
            },
            %{
              has_default: false,
              id: "6e49188d-8a10-11ec-823d-f79fb8a40b3e",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "subjectexpr",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000101"
            },
            %{
              has_default: false,
              id: "6e4946c6-8a10-11ec-8824-0fdde015bc67",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "finalexpr",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000101"
            },
            %{
              has_default: false,
              id: "6e4972b6-8a10-11ec-8144-6dce1dfb07d8",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "errmessage",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000101"
            },
            %{
              has_default: false,
              id: "6e499bfd-8a10-11ec-96fd-871f928fcf5b",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "delegated",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000109"
            },
            %{
              has_default: false,
              id: "6e8f1434-8a10-11ec-a13c-51bc5c115120",
              is_exclusive: false,
              is_writable: true,
              kind: "link",
              name: "subject",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "6e765f11-8a10-11ec-a861-d9b160ab5324"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "63acbf06-4c0c-67ac-c508-50a5ef4f4b16" => %{
          array_element_id: "00000000-0000-0000-0000-000000000111",
          backlink_stubs: [],
          backlinks: [],
          bases: [],
          enum_values: [],
          id: "63acbf06-4c0c-67ac-c508-50a5ef4f4b16",
          intersection_of: [],
          is_abstract: false,
          kind: "array",
          material_id: [],
          name: "array<cal::relative_duration>",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "c15033c7-91d9-11ec-a8be-6130115c11f7" => %{
          array_element_id: [],
          backlink_stubs: [
            %{
              id: "625fd0f0-91d9-11ec-a293-4b2dc324d335",
              is_exclusive: false,
              kind: "link",
              name: "<Ł💯",
              real_cardinality: "Many",
              target_id: "6c0851d6-8a10-11ec-87e9-c3313f204cf8"
            }
          ],
          backlinks: [
            %{
              id: "c155d600-91d9-11ec-be73-e979dac21c79",
              is_exclusive: false,
              kind: "link",
              name: "<Ł💯[is Łukasz]",
              real_cardinality: "Many",
              stub: "Ł💯",
              target_id: "c1547a5c-91d9-11ec-bdcb-0dd51d42fb79"
            }
          ],
          bases: [%{id: "6c0de05d-8a10-11ec-82e8-6fc6431aec91"}],
          enum_values: [],
          id: "c15033c7-91d9-11ec-a8be-6130115c11f7",
          intersection_of: [],
          is_abstract: false,
          kind: "object",
          material_id: [],
          name: "default::A",
          pointers: [
            %{
              has_default: false,
              id: "c1640759-91d9-11ec-9c27-cdb51feec726",
              is_exclusive: false,
              is_writable: true,
              kind: "link",
              name: "s p A m 🤞",
              pointers: [],
              real_cardinality: "One",
              target_id: "c15908ec-91d9-11ec-bc1f-7be915728ec6"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "6c77bd5a-8a10-11ec-83d6-6321f11c8a2d" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "663d299d-8a10-11ec-8771-93e1a9b330f4"}],
          enum_values: ["Infix", "Postfix", "Prefix", "Ternary"],
          id: "6c77bd5a-8a10-11ec-83d6-6321f11c8a2d",
          intersection_of: [],
          is_abstract: false,
          kind: "scalar",
          material_id: [],
          name: "schema::OperatorKind",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "c151834e-91d9-11ec-9ddd-3f4eba72c0ae" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "00000000-0000-0000-0000-000000000101"}],
          enum_values: [],
          id: "c151834e-91d9-11ec-9ddd-3f4eba72c0ae",
          intersection_of: [],
          is_abstract: false,
          kind: "scalar",
          material_id: "00000000-0000-0000-0000-000000000101",
          name: "default::你好",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "00000000-0000-0000-0000-000000000130" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "6630e5b7-8a10-11ec-856b-650e11726a69"}],
          enum_values: [],
          id: "00000000-0000-0000-0000-000000000130",
          intersection_of: [],
          is_abstract: false,
          kind: "scalar",
          material_id: [],
          name: "cfg::memory",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "c15f9041-91d9-11ec-842c-7db96eec4792" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "6c0de05d-8a10-11ec-82e8-6fc6431aec91"}],
          enum_values: [],
          id: "c15f9041-91d9-11ec-842c-7db96eec4792",
          intersection_of: [],
          is_abstract: false,
          kind: "object",
          material_id: [],
          name: "default::Movie",
          pointers: [
            %{
              has_default: false,
              id: "c160dad0-91d9-11ec-bc50-35d12f6bf043",
              is_exclusive: false,
              is_writable: true,
              kind: "link",
              name: "characters",
              pointers: [
                %{
                  id: "c1612b45-91d9-11ec-94e3-a568c87e725d",
                  is_writable: true,
                  kind: "property",
                  name: "@character_name",
                  real_cardinality: "AtMostOne",
                  target_id: "00000000-0000-0000-0000-000000000101"
                }
              ],
              real_cardinality: "Many",
              target_id: "c15c0519-91d9-11ec-8cd7-0be66120fdf5"
            },
            %{
              has_default: false,
              id: "c161497a-91d9-11ec-81e6-5b551b684b4a",
              is_exclusive: true,
              is_writable: true,
              kind: "link",
              name: "profile",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "c15e18c1-91d9-11ec-bc66-693a16a07f31"
            },
            %{
              has_default: false,
              id: "c1624b71-91d9-11ec-a749-036a40175ace",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "genre",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "c147374c-91d9-11ec-8299-e1261ccaa9bc"
            },
            %{
              has_default: false,
              id: "c16262a3-91d9-11ec-b276-c5ce27fe6d52",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "rating",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000107"
            },
            %{
              has_default: true,
              id: "c162de22-91d9-11ec-ad87-37124443f62f",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "release_year",
              pointers: [],
              real_cardinality: "One",
              target_id: "00000000-0000-0000-0000-000000000103"
            },
            %{
              has_default: false,
              id: "c163691e-91d9-11ec-9a7a-0be051b38727",
              is_exclusive: true,
              is_writable: true,
              kind: "property",
              name: "title",
              pointers: [],
              real_cardinality: "One",
              target_id: "00000000-0000-0000-0000-000000000101"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "71a075c2-8a10-11ec-b931-ed6ae24a5f34" => %{
          array_element_id: [],
          backlink_stubs: [
            %{
              id: "625fd0f0-91d9-11ec-a293-4b2dc324d335",
              is_exclusive: false,
              kind: "link",
              name: "<package",
              real_cardinality: "Many",
              target_id: "6c0851d6-8a10-11ec-87e9-c3313f204cf8"
            }
          ],
          backlinks: [
            %{
              id: "71c357a8-8a10-11ec-a97b-77871a489a2b",
              is_exclusive: true,
              kind: "link",
              name: "<package[is schema::Extension]",
              real_cardinality: "AtMostOne",
              stub: "package",
              target_id: "70fcf368-8a10-11ec-901d-5d56207a3f8a"
            }
          ],
          bases: [
            %{id: "71623468-8a10-11ec-b28a-7bada3f5ad0b"},
            %{id: "6d849f36-8a10-11ec-9fd0-0d13e4601f2c"}
          ],
          enum_values: [],
          id: "71a075c2-8a10-11ec-b931-ed6ae24a5f34",
          intersection_of: [],
          is_abstract: false,
          kind: "object",
          material_id: [],
          name: "sys::ExtensionPackage",
          pointers: [
            %{
              has_default: false,
              id: "71a55b1c-8a10-11ec-97e1-6183e72d3cf4",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "script",
              pointers: [],
              real_cardinality: "One",
              target_id: "00000000-0000-0000-0000-000000000101"
            },
            %{
              has_default: false,
              id: "71a59e7f-8a10-11ec-838d-f54a37f92a98",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "version",
              pointers: [],
              real_cardinality: "One",
              target_id: "8ab09b46-19b3-f179-85ae-5e1a1f465de8"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "c16608fe-91d9-11ec-bb2a-ab2c337ace3c" => %{
          array_element_id: [],
          backlink_stubs: [
            %{
              id: "625fd0f0-91d9-11ec-a293-4b2dc324d335",
              is_exclusive: false,
              kind: "link",
              name: "<nemesis",
              real_cardinality: "Many",
              target_id: "6c0851d6-8a10-11ec-87e9-c3313f204cf8"
            }
          ],
          backlinks: [
            %{
              id: "c16a1f49-91d9-11ec-b36d-210ef9388552",
              is_exclusive: false,
              kind: "link",
              name: "<nemesis[is Villain]",
              real_cardinality: "Many",
              stub: "nemesis",
              target_id: "c16826e1-91d9-11ec-a04b-6b6d32ba370b"
            }
          ],
          bases: [%{id: "c15c0519-91d9-11ec-8cd7-0be66120fdf5"}],
          enum_values: [],
          id: "c16608fe-91d9-11ec-bb2a-ab2c337ace3c",
          intersection_of: [],
          is_abstract: false,
          kind: "object",
          material_id: [],
          name: "default::Hero",
          pointers: [
            %{
              has_default: false,
              id: "c167f4b8-91d9-11ec-9c00-6f711e777cbc",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "number_of_movies",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000105"
            },
            %{
              has_default: false,
              id: "c1680bc2-91d9-11ec-9e2d-6d9419d61b34",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "secret_identity",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000101"
            },
            %{
              has_default: false,
              id: "c1747675-91d9-11ec-8c9d-9170dc5a0ef4",
              is_exclusive: false,
              is_writable: false,
              kind: "link",
              name: "villains",
              pointers: [],
              real_cardinality: "Many",
              target_id: "c16826e1-91d9-11ec-a04b-6b6d32ba370b"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "722254b3-8a10-11ec-8402-0bfe9e5855c7" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "6c0851d6-8a10-11ec-87e9-c3313f204cf8"}],
          enum_values: [],
          id: "722254b3-8a10-11ec-8402-0bfe9e5855c7",
          intersection_of: [],
          is_abstract: true,
          kind: "object",
          material_id: [],
          name: "cfg::ConfigObject",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "00000000-0000-0000-0000-0000000001ff" => %{
          bases: [],
          enum_values: [],
          id: "00000000-0000-0000-0000-0000000001ff",
          is_abstract: false,
          kind: "scalar",
          material_id: nil,
          name: "std::number"
        },
        "79d8ede8-30f1-a805-fbc3-503ece3c9205" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [],
          enum_values: [],
          id: "79d8ede8-30f1-a805-fbc3-503ece3c9205",
          intersection_of: [],
          is_abstract: false,
          kind: "tuple",
          material_id: [],
          name: "tuple<std::str, std::json>",
          pointers: [],
          tuple_elements: [
            %{
              id: "c2598878-8a10-11ec-a267-07efaf365bc6",
              name: "0",
              target_id: "00000000-0000-0000-0000-000000000101"
            },
            %{
              id: "c2599570-8a10-11ec-a267-234dcd68cdcf",
              name: "1",
              target_id: "00000000-0000-0000-0000-00000000010f"
            }
          ],
          union_of: []
        },
        "732817b7-131f-fac8-c0a3-58a31b5ac1d3" => %{
          array_element_id: "00000000-0000-0000-0000-000000000103",
          backlink_stubs: [],
          backlinks: [],
          bases: [],
          enum_values: [],
          id: "732817b7-131f-fac8-c0a3-58a31b5ac1d3",
          intersection_of: [],
          is_abstract: false,
          kind: "array",
          material_id: [],
          name: "array<std::int16>",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "6eab94c9-8a10-11ec-9d43-ad67d08c6d68" => %{
          array_element_id: [],
          backlink_stubs: [
            %{
              id: "625fd0f0-91d9-11ec-a293-4b2dc324d335",
              is_exclusive: false,
              kind: "link",
              name: "<source",
              real_cardinality: "Many",
              target_id: "6c0851d6-8a10-11ec-87e9-c3313f204cf8"
            }
          ],
          backlinks: [
            %{
              id: "70366034-8a10-11ec-8860-e78ecbe1d6f7",
              is_exclusive: false,
              kind: "link",
              name: "<source[is schema::Pointer]",
              real_cardinality: "Many",
              stub: "source",
              target_id: "6ec179d6-8a10-11ec-bdac-c7e157d08163"
            },
            %{
              id: "70378178-8a10-11ec-96b3-0f3964de25af",
              is_exclusive: false,
              kind: "link",
              name: "<source[is schema::Property]",
              real_cardinality: "Many",
              stub: "source",
              target_id: "6ffb3e67-8a10-11ec-9d89-5f1de95272c4"
            },
            %{
              id: "7036fd57-8a10-11ec-8297-2d96b3a56108",
              is_exclusive: false,
              kind: "link",
              name: "<source[is schema::Link]",
              real_cardinality: "Many",
              stub: "source",
              target_id: "6fb26983-8a10-11ec-bb96-c5decb666559"
            }
          ],
          bases: [%{id: "6c7a7341-8a10-11ec-a7ad-3f5a92d98a26"}],
          enum_values: [],
          id: "6eab94c9-8a10-11ec-9d43-ad67d08c6d68",
          intersection_of: [],
          is_abstract: true,
          kind: "object",
          material_id: [],
          name: "schema::Source",
          pointers: [
            %{
              has_default: false,
              id: "6eaeb3cc-8a10-11ec-aab9-8d0761f8be5c",
              is_exclusive: true,
              is_writable: true,
              kind: "link",
              name: "indexes",
              pointers: [],
              real_cardinality: "Many",
              target_id: "6e946f77-8a10-11ec-948c-2fb05007b715"
            },
            %{
              has_default: false,
              id: "6ef88adc-8a10-11ec-a425-d97472c27a60",
              is_exclusive: true,
              is_writable: true,
              kind: "link",
              name: "pointers",
              pointers: [
                %{
                  id: "6ef90b42-8a10-11ec-a921-8d75034dd969",
                  is_writable: true,
                  kind: "property",
                  name: "@owned",
                  real_cardinality: "AtMostOne",
                  target_id: "00000000-0000-0000-0000-000000000109"
                },
                %{
                  id: "6ef930c8-8a10-11ec-8029-bd522f99f6f4",
                  is_writable: true,
                  kind: "property",
                  name: "@is_owned",
                  real_cardinality: "AtMostOne",
                  target_id: "00000000-0000-0000-0000-000000000109"
                }
              ],
              real_cardinality: "Many",
              target_id: "6ec179d6-8a10-11ec-bdac-c7e157d08163"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "c16826e1-91d9-11ec-a04b-6b6d32ba370b" => %{
          array_element_id: [],
          backlink_stubs: [
            %{
              id: "625fd0f0-91d9-11ec-a293-4b2dc324d335",
              is_exclusive: false,
              kind: "link",
              name: "<villains",
              real_cardinality: "Many",
              target_id: "6c0851d6-8a10-11ec-87e9-c3313f204cf8"
            }
          ],
          backlinks: [
            %{
              id: "c1747675-91d9-11ec-8c9d-9170dc5a0ef4",
              is_exclusive: false,
              kind: "link",
              name: "<villains[is Hero]",
              real_cardinality: "Many",
              stub: "villains",
              target_id: "c16608fe-91d9-11ec-bb2a-ab2c337ace3c"
            }
          ],
          bases: [%{id: "c15c0519-91d9-11ec-8cd7-0be66120fdf5"}],
          enum_values: [],
          id: "c16826e1-91d9-11ec-a04b-6b6d32ba370b",
          intersection_of: [],
          is_abstract: false,
          kind: "object",
          material_id: [],
          name: "default::Villain",
          pointers: [
            %{
              has_default: false,
              id: "c16a1f49-91d9-11ec-b36d-210ef9388552",
              is_exclusive: false,
              is_writable: true,
              kind: "link",
              name: "nemesis",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "c16608fe-91d9-11ec-bb2a-ab2c337ace3c"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "6c0de05d-8a10-11ec-82e8-6fc6431aec91" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "6c0851d6-8a10-11ec-87e9-c3313f204cf8"}],
          enum_values: [],
          id: "6c0de05d-8a10-11ec-82e8-6fc6431aec91",
          intersection_of: [],
          is_abstract: true,
          kind: "object",
          material_id: [],
          name: "std::Object",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "6ca1e64e-8a10-11ec-aeca-991b168db9d2" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [
            %{id: "6d9b4271-8a10-11ec-9398-c1997d33e06f"},
            %{id: "6c91fdfe-8a10-11ec-bacd-f11d47fae198"}
          ],
          enum_values: [],
          id: "6ca1e64e-8a10-11ec-aeca-991b168db9d2",
          intersection_of: [],
          is_abstract: false,
          kind: "object",
          material_id: [],
          name: "schema::PseudoType",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "6d42ac80-8a10-11ec-9de3-a7a5e22f749b" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "6cfed211-8a10-11ec-b484-8bfa3d691a5b"}],
          enum_values: [],
          id: "6d42ac80-8a10-11ec-9de3-a7a5e22f749b",
          intersection_of: [],
          is_abstract: false,
          kind: "object",
          material_id: [],
          name: "schema::Tuple",
          pointers: [
            %{
              has_default: false,
              id: "6d4946b9-8a10-11ec-8087-73c70fa26631",
              is_exclusive: true,
              is_writable: true,
              kind: "link",
              name: "element_types",
              pointers: [
                %{
                  id: "6d49a5ed-8a10-11ec-93e8-7fb67d130fdf",
                  is_writable: true,
                  kind: "property",
                  name: "@index",
                  real_cardinality: "AtMostOne",
                  target_id: "00000000-0000-0000-0000-000000000105"
                }
              ],
              real_cardinality: "Many",
              target_id: "6d362a1b-8a10-11ec-be37-b30418a69bcc"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "00000000-0000-0000-0000-000000000104" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "66364d12-8a10-11ec-b0bd-dba594fec9b3"}],
          cast_only_type: "00000000-0000-0000-0000-0000000001ff",
          enum_values: [],
          id: "00000000-0000-0000-0000-000000000104",
          intersection_of: [],
          is_abstract: false,
          kind: "scalar",
          material_id: [],
          name: "std::int32",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "c1474a0c-91d9-11ec-9b87-bbd83ad8c283" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "6c0de05d-8a10-11ec-82e8-6fc6431aec91"}],
          enum_values: [],
          id: "c1474a0c-91d9-11ec-9b87-bbd83ad8c283",
          intersection_of: [],
          is_abstract: true,
          kind: "object",
          material_id: [],
          name: "default::HasAge",
          pointers: [
            %{
              has_default: false,
              id: "c148a394-91d9-11ec-990c-eb0f3711d82b",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "age",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000105"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "6fb26983-8a10-11ec-bb96-c5decb666559" => %{
          array_element_id: [],
          backlink_stubs: [
            %{
              id: "625fd0f0-91d9-11ec-a293-4b2dc324d335",
              is_exclusive: false,
              kind: "link",
              name: "<links",
              real_cardinality: "Many",
              target_id: "6c0851d6-8a10-11ec-87e9-c3313f204cf8"
            }
          ],
          backlinks: [
            %{
              id: "705d5109-8a10-11ec-a1e4-efd68feec296",
              is_exclusive: false,
              kind: "link",
              name: "<links[is schema::ObjectType]",
              real_cardinality: "Many",
              stub: "links",
              target_id: "6f60f97a-8a10-11ec-89c8-bfc584a2e355"
            }
          ],
          bases: [
            %{id: "6ec179d6-8a10-11ec-bdac-c7e157d08163"},
            %{id: "6eab94c9-8a10-11ec-9d43-ad67d08c6d68"}
          ],
          enum_values: [],
          id: "6fb26983-8a10-11ec-bb96-c5decb666559",
          intersection_of: [],
          is_abstract: false,
          kind: "object",
          material_id: [],
          name: "schema::Link",
          pointers: [
            %{
              has_default: false,
              id: "70388b00-8a10-11ec-8022-f160ddaffcd7",
              is_exclusive: false,
              is_writable: true,
              kind: "link",
              name: "target",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "6f60f97a-8a10-11ec-89c8-bfc584a2e355"
            },
            %{
              has_default: false,
              id: "704fc6a2-8a10-11ec-ac12-5b7a16d5676f",
              is_exclusive: false,
              is_writable: false,
              kind: "link",
              name: "properties",
              pointers: [
                %{
                  id: "70506a79-8a10-11ec-b746-c3948494c957",
                  is_writable: false,
                  kind: "property",
                  name: "@is_owned",
                  real_cardinality: "AtMostOne",
                  target_id: "00000000-0000-0000-0000-000000000109"
                },
                %{
                  id: "705044d0-8a10-11ec-b104-2b0f4cc92bcd",
                  is_writable: true,
                  kind: "property",
                  name: "@owned",
                  real_cardinality: "AtMostOne",
                  target_id: "00000000-0000-0000-0000-000000000109"
                }
              ],
              real_cardinality: "Many",
              target_id: "6ffb3e67-8a10-11ec-9d89-5f1de95272c4"
            },
            %{
              has_default: false,
              id: "7052033c-8a10-11ec-8de3-39abd25b24d8",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "on_target_delete",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "6c773110-8a10-11ec-bb4a-6992c067e64b"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "6c76a6a4-8a10-11ec-a6ac-7bbb13b222ae" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "663d299d-8a10-11ec-8771-93e1a9b330f4"}],
          enum_values: ["One", "Many"],
          id: "6c76a6a4-8a10-11ec-a6ac-7bbb13b222ae",
          intersection_of: [],
          is_abstract: false,
          kind: "scalar",
          material_id: [],
          name: "schema::Cardinality",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "6e765f11-8a10-11ec-a861-d9b160ab5324" => %{
          array_element_id: [],
          backlink_stubs: [
            %{
              id: "625fd0f0-91d9-11ec-a293-4b2dc324d335",
              is_exclusive: false,
              kind: "link",
              name: "<subject",
              real_cardinality: "Many",
              target_id: "6c0851d6-8a10-11ec-87e9-c3313f204cf8"
            }
          ],
          backlinks: [
            %{
              id: "6e8f1434-8a10-11ec-a13c-51bc5c115120",
              is_exclusive: false,
              kind: "link",
              name: "<subject[is schema::Constraint]",
              real_cardinality: "Many",
              stub: "subject",
              target_id: "6e01f436-8a10-11ec-9117-0f2b60a3b4d5"
            }
          ],
          bases: [
            %{id: "6c7a7341-8a10-11ec-a7ad-3f5a92d98a26"},
            %{id: "6d9b4271-8a10-11ec-9398-c1997d33e06f"},
            %{id: "6d849f36-8a10-11ec-9fd0-0d13e4601f2c"}
          ],
          enum_values: [],
          id: "6e765f11-8a10-11ec-a861-d9b160ab5324",
          intersection_of: [],
          is_abstract: true,
          kind: "object",
          material_id: [],
          name: "schema::ConsistencySubject",
          pointers: [
            %{
              has_default: false,
              id: "6e79882b-8a10-11ec-9c50-0dea88874597",
              is_exclusive: true,
              is_writable: true,
              kind: "link",
              name: "constraints",
              pointers: [
                %{
                  id: "6e7a2db3-8a10-11ec-a427-3fa079b0887d",
                  is_writable: true,
                  kind: "property",
                  name: "@is_owned",
                  real_cardinality: "AtMostOne",
                  target_id: "00000000-0000-0000-0000-000000000109"
                },
                %{
                  id: "6e7a05de-8a10-11ec-b6f7-67d46d38377f",
                  is_writable: true,
                  kind: "property",
                  name: "@owned",
                  real_cardinality: "AtMostOne",
                  target_id: "00000000-0000-0000-0000-000000000109"
                }
              ],
              real_cardinality: "Many",
              target_id: "6e01f436-8a10-11ec-9117-0f2b60a3b4d5"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "6d189319-8a10-11ec-a0a4-37ac70110c38" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "6cfed211-8a10-11ec-b484-8bfa3d691a5b"}],
          enum_values: [],
          id: "6d189319-8a10-11ec-a0a4-37ac70110c38",
          intersection_of: [],
          is_abstract: false,
          kind: "object",
          material_id: [],
          name: "schema::Array",
          pointers: [
            %{
              has_default: false,
              id: "6d1f94f0-8a10-11ec-bb5b-595636698a04",
              is_exclusive: false,
              is_writable: true,
              kind: "link",
              name: "element_type",
              pointers: [],
              real_cardinality: "One",
              target_id: "6c91fdfe-8a10-11ec-bacd-f11d47fae198"
            },
            %{
              has_default: false,
              id: "6d2009e9-8a10-11ec-a813-a7d7fa24f355",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "dimensions",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "732817b7-131f-fac8-c0a3-58a31b5ac1d3"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "706af6a3-8a10-11ec-a8db-99fefbf8cf3d" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [
            %{id: "6dd14eb7-8a10-11ec-b180-493af67bf9e1"},
            %{id: "6df135ee-8a10-11ec-a8d9-99c01dadf85e"}
          ],
          enum_values: [],
          id: "706af6a3-8a10-11ec-a8db-99fefbf8cf3d",
          intersection_of: [],
          is_abstract: false,
          kind: "object",
          material_id: [],
          name: "schema::Function",
          pointers: [
            %{
              has_default: true,
              id: "7071cfc9-8a10-11ec-ad1e-3b18e6a89600",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "preserves_optionality",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000109"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "c147374c-91d9-11ec-8299-e1261ccaa9bc" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "663d299d-8a10-11ec-8771-93e1a9b330f4"}],
          enum_values: ["Horror", "Action", "RomCom"],
          id: "c147374c-91d9-11ec-8299-e1261ccaa9bc",
          intersection_of: [],
          is_abstract: false,
          kind: "scalar",
          material_id: [],
          name: "default::Genre",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "6c790fba-8a10-11ec-9202-93da54716b5c" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "663d299d-8a10-11ec-8771-93e1a9b330f4"}],
          enum_values: ["VariadicParam", "NamedOnlyParam", "PositionalParam"],
          id: "6c790fba-8a10-11ec-9202-93da54716b5c",
          intersection_of: [],
          is_abstract: false,
          kind: "scalar",
          material_id: [],
          name: "schema::ParameterKind",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "9c27acd9-0932-6050-c7b0-c7410e2e0a85" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [],
          enum_values: [],
          id: "9c27acd9-0932-6050-c7b0-c7410e2e0a85",
          intersection_of: [],
          is_abstract: true,
          kind: "tuple",
          material_id: [],
          name: "tuple<std::int64, anytype>",
          pointers: [],
          tuple_elements: [
            %{
              id: "b61fd0ee-8a10-11ec-a267-d37b9c8dc069",
              name: "0",
              target_id: "00000000-0000-0000-0000-000000000105"
            },
            %{
              id: "b61ff344-8a10-11ec-a267-a7cefe3a86d8",
              name: "1",
              target_id: "00000000-0000-0000-0000-000000000001"
            }
          ],
          union_of: []
        },
        "c15c0519-91d9-11ec-8cd7-0be66120fdf5" => %{
          array_element_id: [],
          backlink_stubs: [
            %{
              id: "625fd0f0-91d9-11ec-a293-4b2dc324d335",
              is_exclusive: false,
              kind: "link",
              name: "<characters",
              real_cardinality: "Many",
              target_id: "6c0851d6-8a10-11ec-87e9-c3313f204cf8"
            }
          ],
          backlinks: [
            %{
              id: "c160dad0-91d9-11ec-bc50-35d12f6bf043",
              is_exclusive: false,
              kind: "link",
              name: "<characters[is Movie]",
              real_cardinality: "Many",
              stub: "characters",
              target_id: "c15f9041-91d9-11ec-842c-7db96eec4792"
            }
          ],
          bases: [%{id: "6c0de05d-8a10-11ec-82e8-6fc6431aec91"}],
          enum_values: [],
          id: "c15c0519-91d9-11ec-8cd7-0be66120fdf5",
          intersection_of: [],
          is_abstract: true,
          kind: "object",
          material_id: [],
          name: "default::Person",
          pointers: [
            %{
              has_default: false,
              id: "c15d7f87-91d9-11ec-b4bd-595c3b75fa55",
              is_exclusive: true,
              is_writable: true,
              kind: "property",
              name: "name",
              pointers: [],
              real_cardinality: "One",
              target_id: "00000000-0000-0000-0000-000000000101"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "72506084-8a10-11ec-be6c-41dfc4790203" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "663d299d-8a10-11ec-8771-93e1a9b330f4"}],
          enum_values: ["AlwaysAllow", "NeverAllow"],
          id: "72506084-8a10-11ec-be6c-41dfc4790203",
          intersection_of: [],
          is_abstract: false,
          kind: "scalar",
          material_id: [],
          name: "cfg::AllowBareDDL",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "70df00bd-8a10-11ec-adae-d9b84c027d1c" => %{
          array_element_id: [],
          backlink_stubs: [
            %{
              id: "625fd0f0-91d9-11ec-a293-4b2dc324d335",
              is_exclusive: false,
              kind: "link",
              name: "<parents",
              real_cardinality: "Many",
              target_id: "6c0851d6-8a10-11ec-87e9-c3313f204cf8"
            }
          ],
          backlinks: [
            %{
              id: "70e34db3-8a10-11ec-83da-5563804e865a",
              is_exclusive: false,
              kind: "link",
              name: "<parents[is schema::Migration]",
              real_cardinality: "Many",
              stub: "parents",
              target_id: "70df00bd-8a10-11ec-adae-d9b84c027d1c"
            }
          ],
          bases: [
            %{id: "6d849f36-8a10-11ec-9fd0-0d13e4601f2c"},
            %{id: "6c7a7341-8a10-11ec-a7ad-3f5a92d98a26"}
          ],
          enum_values: [],
          id: "70df00bd-8a10-11ec-adae-d9b84c027d1c",
          intersection_of: [],
          is_abstract: false,
          kind: "object",
          material_id: [],
          name: "schema::Migration",
          pointers: [
            %{
              has_default: false,
              id: "70e34db3-8a10-11ec-83da-5563804e865a",
              is_exclusive: false,
              is_writable: true,
              kind: "link",
              name: "parents",
              pointers: [],
              real_cardinality: "Many",
              target_id: "70df00bd-8a10-11ec-adae-d9b84c027d1c"
            },
            %{
              has_default: false,
              id: "70e3a92e-8a10-11ec-8f64-1181a0c4997d",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "script",
              pointers: [],
              real_cardinality: "One",
              target_id: "00000000-0000-0000-0000-000000000101"
            },
            %{
              has_default: false,
              id: "70e3c518-8a10-11ec-a67f-ffdd0c2d9181",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "message",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000101"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "72446121-8a10-11ec-a0ee-0f0637eee6d9" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "722e05a0-8a10-11ec-b24d-0774edeaa026"}],
          enum_values: [],
          id: "72446121-8a10-11ec-a0ee-0f0637eee6d9",
          intersection_of: [],
          is_abstract: false,
          kind: "object",
          material_id: [],
          name: "cfg::SCRAM",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "00000000-0000-0000-0000-000000000109" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "6630e5b7-8a10-11ec-856b-650e11726a69"}],
          enum_values: [],
          id: "00000000-0000-0000-0000-000000000109",
          intersection_of: [],
          is_abstract: false,
          kind: "scalar",
          material_id: [],
          name: "std::bool",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "7160f52a-8a10-11ec-9ce7-e363b6134179" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "663d299d-8a10-11ec-8771-93e1a9b330f4"}],
          enum_values: ["RepeatableRead", "Serializable"],
          id: "7160f52a-8a10-11ec-9ce7-e363b6134179",
          intersection_of: [],
          is_abstract: false,
          kind: "scalar",
          material_id: [],
          name: "sys::TransactionIsolation",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "00000000-0000-0000-0000-000000000108" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "663a95c4-8a10-11ec-b0ee-4f15729863f1"}],
          enum_values: [],
          id: "00000000-0000-0000-0000-000000000108",
          intersection_of: [],
          is_abstract: false,
          kind: "scalar",
          material_id: [],
          name: "std::decimal",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "00000000-0000-0000-0000-00000000010e" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "6630e5b7-8a10-11ec-856b-650e11726a69"}],
          enum_values: [],
          id: "00000000-0000-0000-0000-00000000010e",
          intersection_of: [],
          is_abstract: false,
          kind: "scalar",
          material_id: [],
          name: "std::duration",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "c14a20a8-91d9-11ec-a941-cf56040cd56e" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "663c804e-8a10-11ec-a3c5-438941da3b32"}],
          enum_values: [],
          id: "c14a20a8-91d9-11ec-a941-cf56040cd56e",
          intersection_of: [],
          is_abstract: false,
          kind: "scalar",
          material_id: "00000000-0000-0000-0000-000000000105",
          name: "default::bag_seq",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "c14a37c5-91d9-11ec-b156-01fed3d58c5f" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [
            %{id: "c148c177-91d9-11ec-acab-f1387c995c49"},
            %{id: "c1474a0c-91d9-11ec-9b87-bbd83ad8c283"}
          ],
          enum_values: [],
          id: "c14a37c5-91d9-11ec-b156-01fed3d58c5f",
          intersection_of: [],
          is_abstract: false,
          kind: "object",
          material_id: [],
          name: "default::Bag",
          pointers: [
            %{
              has_default: false,
              id: "c14bf307-91d9-11ec-b3ee-a39d1668591a",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "enumArr",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "adc1d30d-5cc1-0de1-cb14-3b2fc9eaae6e"
            },
            %{
              has_default: false,
              id: "c14c0fcd-91d9-11ec-b4ad-61db03594ae3",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "bigintField",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000110"
            },
            %{
              has_default: false,
              id: "c14c28e0-91d9-11ec-b6b3-6ba57496f0ae",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "boolField",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000109"
            },
            %{
              has_default: false,
              id: "c14c41c7-91d9-11ec-b1e0-afd031d286c4",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "datetimeField",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-00000000010a"
            },
            %{
              has_default: false,
              id: "c14c5a6f-91d9-11ec-9735-8199dad6e6cc",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "decimalField",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000108"
            },
            %{
              has_default: false,
              id: "c14c7baa-91d9-11ec-80fc-9d09b5288511",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "durationField",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-00000000010e"
            },
            %{
              has_default: false,
              id: "c14c9e1f-91d9-11ec-aa51-bd49a3806d73",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "float32Field",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000106"
            },
            %{
              has_default: false,
              id: "c14cb86e-91d9-11ec-bd39-ed170bb3f8bf",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "float64Field",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000107"
            },
            %{
              has_default: false,
              id: "c14ce00e-91d9-11ec-b7d9-276cbd697711",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "genre",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "c147374c-91d9-11ec-8299-e1261ccaa9bc"
            },
            %{
              has_default: false,
              id: "c14d0786-91d9-11ec-9222-1bd9ec019903",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "int16Field",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000103"
            },
            %{
              has_default: false,
              id: "c14d2e05-91d9-11ec-8388-77432401ed22",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "int32Field",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000104"
            },
            %{
              has_default: false,
              id: "c14d4a28-91d9-11ec-8f2c-afea5b9f2875",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "int64Field",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000105"
            },
            %{
              has_default: false,
              id: "c14d6679-91d9-11ec-b348-15bf8a3cd993",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "localDateField",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-00000000010c"
            },
            %{
              has_default: false,
              id: "c14d844c-91d9-11ec-9094-afea90fc8df1",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "localDateTimeField",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-00000000010b"
            },
            %{
              has_default: false,
              id: "c14da28b-91d9-11ec-ae79-9f41860e7373",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "localTimeField",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-00000000010d"
            },
            %{
              has_default: false,
              id: "c14dcca4-91d9-11ec-b558-8f69041566db",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "namedTuple",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "10386947-4d9a-9752-f24f-0d79556fe2f7"
            },
            %{
              has_default: false,
              id: "c14de8a5-91d9-11ec-81ae-35c75d5cf18e",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "secret_identity",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000101"
            },
            %{
              has_default: true,
              id: "c14e047c-91d9-11ec-b623-a38a93f4ed9a",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "seqField",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "c14a20a8-91d9-11ec-a941-cf56040cd56e"
            },
            %{
              has_default: false,
              id: "c14e2a10-91d9-11ec-bd47-b5f74f8f50a8",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "stringMultiArr",
              pointers: [],
              real_cardinality: "Many",
              target_id: "05f91774-15ea-9001-038e-092c1cad80af"
            },
            %{
              has_default: false,
              id: "c14e4b17-91d9-11ec-9a8b-57565758556e",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "stringsArr",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "05f91774-15ea-9001-038e-092c1cad80af"
            },
            %{
              has_default: false,
              id: "c14e6ee6-91d9-11ec-9ced-fbd2b5d5680d",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "stringsMulti",
              pointers: [],
              real_cardinality: "AtLeastOne",
              target_id: "00000000-0000-0000-0000-000000000101"
            },
            %{
              has_default: false,
              id: "c14e9515-91d9-11ec-917d-47f30ebd1e85",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "unnamedTuple",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "338fc9bb-51be-b55d-b2f7-abe53ff0567f"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "00000000-0000-0000-0000-000000000100" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "6630e5b7-8a10-11ec-856b-650e11726a69"}],
          enum_values: [],
          id: "00000000-0000-0000-0000-000000000100",
          intersection_of: [],
          is_abstract: false,
          kind: "scalar",
          material_id: [],
          name: "std::uuid",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "00000000-0000-0000-0000-00000000010c" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "6630e5b7-8a10-11ec-856b-650e11726a69"}],
          enum_values: [],
          id: "00000000-0000-0000-0000-00000000010c",
          intersection_of: [],
          is_abstract: false,
          kind: "scalar",
          material_id: [],
          name: "cal::local_date",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "c15908ec-91d9-11ec-bc1f-7be915728ec6" => %{
          array_element_id: [],
          backlink_stubs: [
            %{
              id: "625fd0f0-91d9-11ec-a293-4b2dc324d335",
              is_exclusive: false,
              kind: "link",
              name: "<s p A m 🤞",
              real_cardinality: "Many",
              target_id: "6c0851d6-8a10-11ec-87e9-c3313f204cf8"
            }
          ],
          backlinks: [
            %{
              id: "c1640759-91d9-11ec-9c27-cdb51feec726",
              is_exclusive: false,
              kind: "link",
              name: "<s p A m 🤞[is A]",
              real_cardinality: "Many",
              stub: "s p A m 🤞",
              target_id: "c15033c7-91d9-11ec-a8be-6130115c11f7"
            }
          ],
          bases: [%{id: "6c0de05d-8a10-11ec-82e8-6fc6431aec91"}],
          enum_values: [],
          id: "c15908ec-91d9-11ec-bc1f-7be915728ec6",
          intersection_of: [],
          is_abstract: false,
          kind: "object",
          material_id: [],
          name: "default::S p a M",
          pointers: [
            %{
              has_default: false,
              id: "c15aab8a-91d9-11ec-bd09-73bfe16ae6e0",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "🚀",
              pointers: [],
              real_cardinality: "One",
              target_id: "00000000-0000-0000-0000-000000000104"
            },
            %{
              has_default: false,
              id: "c15b502b-91d9-11ec-a16c-7bc2a081deaf",
              is_exclusive: false,
              is_writable: false,
              kind: "property",
              name: "c100",
              pointers: [],
              real_cardinality: "One",
              target_id: "00000000-0000-0000-0000-000000000105"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "6635a1ee-8a10-11ec-8b19-afdb38091631" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "6630e5b7-8a10-11ec-856b-650e11726a69"}],
          enum_values: [],
          id: "6635a1ee-8a10-11ec-8b19-afdb38091631",
          intersection_of: [],
          is_abstract: true,
          kind: "scalar",
          material_id: [],
          name: "std::anyreal",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "00000000-0000-0000-0000-000000000103" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "66364d12-8a10-11ec-b0bd-dba594fec9b3"}],
          cast_only_type: "00000000-0000-0000-0000-0000000001ff",
          enum_values: [],
          id: "00000000-0000-0000-0000-000000000103",
          intersection_of: [],
          is_abstract: false,
          kind: "scalar",
          material_id: [],
          name: "std::int16",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "7309eaa6-8a10-11ec-9f02-93e426acb102" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "7268fc76-8a10-11ec-8ce8-45c375a2833a"}],
          enum_values: [],
          id: "7309eaa6-8a10-11ec-9f02-93e426acb102",
          intersection_of: [],
          is_abstract: false,
          kind: "object",
          material_id: [],
          name: "cfg::InstanceConfig",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "6f60f97a-8a10-11ec-89c8-bfc584a2e355" => %{
          array_element_id: [],
          backlink_stubs: [
            %{
              id: "625fd0f0-91d9-11ec-a293-4b2dc324d335",
              is_exclusive: false,
              kind: "link",
              name: "<intersection_of",
              real_cardinality: "Many",
              target_id: "6c0851d6-8a10-11ec-87e9-c3313f204cf8"
            },
            %{
              id: "625fd0f0-91d9-11ec-a293-4b2dc324d335",
              is_exclusive: false,
              kind: "link",
              name: "<target",
              real_cardinality: "Many",
              target_id: "6c0851d6-8a10-11ec-87e9-c3313f204cf8"
            },
            %{
              id: "625fd0f0-91d9-11ec-a293-4b2dc324d335",
              is_exclusive: false,
              kind: "link",
              name: "<union_of",
              real_cardinality: "Many",
              target_id: "6c0851d6-8a10-11ec-87e9-c3313f204cf8"
            }
          ],
          backlinks: [
            %{
              id: "6fa7ba29-8a10-11ec-a417-7faf63de0c91",
              is_exclusive: false,
              kind: "link",
              name: "<union_of[is schema::ObjectType]",
              real_cardinality: "Many",
              stub: "union_of",
              target_id: "6f60f97a-8a10-11ec-89c8-bfc584a2e355"
            },
            %{
              id: "6fa83e54-8a10-11ec-b36a-899344d20af5",
              is_exclusive: false,
              kind: "link",
              name: "<intersection_of[is schema::ObjectType]",
              real_cardinality: "Many",
              stub: "intersection_of",
              target_id: "6f60f97a-8a10-11ec-89c8-bfc584a2e355"
            },
            %{
              id: "70388b00-8a10-11ec-8022-f160ddaffcd7",
              is_exclusive: false,
              kind: "link",
              name: "<target[is schema::Link]",
              real_cardinality: "Many",
              stub: "target",
              target_id: "6fb26983-8a10-11ec-bb96-c5decb666559"
            }
          ],
          bases: [
            %{id: "6d9b4271-8a10-11ec-9398-c1997d33e06f"},
            %{id: "6e765f11-8a10-11ec-a861-d9b160ab5324"},
            %{id: "6d849f36-8a10-11ec-9fd0-0d13e4601f2c"},
            %{id: "6c91fdfe-8a10-11ec-bacd-f11d47fae198"},
            %{id: "6eab94c9-8a10-11ec-9d43-ad67d08c6d68"}
          ],
          enum_values: [],
          id: "6f60f97a-8a10-11ec-89c8-bfc584a2e355",
          intersection_of: [],
          is_abstract: false,
          kind: "object",
          material_id: [],
          name: "schema::ObjectType",
          pointers: [
            %{
              has_default: false,
              id: "6fa7ba29-8a10-11ec-a417-7faf63de0c91",
              is_exclusive: false,
              is_writable: true,
              kind: "link",
              name: "union_of",
              pointers: [],
              real_cardinality: "Many",
              target_id: "6f60f97a-8a10-11ec-89c8-bfc584a2e355"
            },
            %{
              has_default: false,
              id: "6fa83e54-8a10-11ec-b36a-899344d20af5",
              is_exclusive: false,
              is_writable: true,
              kind: "link",
              name: "intersection_of",
              pointers: [],
              real_cardinality: "Many",
              target_id: "6f60f97a-8a10-11ec-89c8-bfc584a2e355"
            },
            %{
              has_default: false,
              id: "6fa9c4b8-8a10-11ec-bdbb-318ed293969c",
              is_exclusive: false,
              is_writable: false,
              kind: "property",
              name: "compound_type",
              pointers: [],
              real_cardinality: "One",
              target_id: "00000000-0000-0000-0000-000000000109"
            },
            %{
              has_default: false,
              id: "6fab035a-8a10-11ec-abf6-571c1e5794e9",
              is_exclusive: false,
              is_writable: false,
              kind: "property",
              name: "is_compound_type",
              pointers: [],
              real_cardinality: "One",
              target_id: "00000000-0000-0000-0000-000000000109"
            },
            %{
              has_default: false,
              id: "705d5109-8a10-11ec-a1e4-efd68feec296",
              is_exclusive: false,
              is_writable: false,
              kind: "link",
              name: "links",
              pointers: [
                %{
                  id: "705e18f0-8a10-11ec-a46b-35ad07051777",
                  is_writable: false,
                  kind: "property",
                  name: "@is_owned",
                  real_cardinality: "AtMostOne",
                  target_id: "00000000-0000-0000-0000-000000000109"
                },
                %{
                  id: "705dec78-8a10-11ec-ada5-33507641fe31",
                  is_writable: true,
                  kind: "property",
                  name: "@owned",
                  real_cardinality: "AtMostOne",
                  target_id: "00000000-0000-0000-0000-000000000109"
                }
              ],
              real_cardinality: "Many",
              target_id: "6fb26983-8a10-11ec-bb96-c5decb666559"
            },
            %{
              has_default: false,
              id: "7060327e-8a10-11ec-8cfa-236f994ceb57",
              is_exclusive: false,
              is_writable: false,
              kind: "link",
              name: "properties",
              pointers: [
                %{
                  id: "70611fa1-8a10-11ec-80ce-df16f6602b34",
                  is_writable: false,
                  kind: "property",
                  name: "@is_owned",
                  real_cardinality: "AtMostOne",
                  target_id: "00000000-0000-0000-0000-000000000109"
                },
                %{
                  id: "7060f972-8a10-11ec-b55f-d1637d8edf88",
                  is_writable: true,
                  kind: "property",
                  name: "@owned",
                  real_cardinality: "AtMostOne",
                  target_id: "00000000-0000-0000-0000-000000000109"
                }
              ],
              real_cardinality: "Many",
              target_id: "6ffb3e67-8a10-11ec-9d89-5f1de95272c4"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "6630e5b7-8a10-11ec-856b-650e11726a69" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [],
          enum_values: [],
          id: "6630e5b7-8a10-11ec-856b-650e11726a69",
          intersection_of: [],
          is_abstract: true,
          kind: "scalar",
          material_id: [],
          name: "std::anyscalar",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "c151938f-91d9-11ec-a0b8-19a30ae39783" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "c151834e-91d9-11ec-9ddd-3f4eba72c0ae"}],
          enum_values: [],
          id: "c151938f-91d9-11ec-a0b8-19a30ae39783",
          intersection_of: [],
          is_abstract: false,
          kind: "scalar",
          material_id: "00000000-0000-0000-0000-000000000101",
          name: "default::مرحبا",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "82ea7b30-73d3-c79c-86fb-b253f194f53e" => %{
          array_element_id: "00000000-0000-0000-0000-00000000010d",
          backlink_stubs: [],
          backlinks: [],
          bases: [],
          enum_values: [],
          id: "82ea7b30-73d3-c79c-86fb-b253f194f53e",
          intersection_of: [],
          is_abstract: false,
          kind: "array",
          material_id: [],
          name: "array<cal::local_time>",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "00000000-0000-0000-0000-000000000002" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [],
          enum_values: [],
          id: "00000000-0000-0000-0000-000000000002",
          intersection_of: [],
          is_abstract: false,
          kind: "unknown",
          material_id: [],
          name: "anytuple",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "6c0851d6-8a10-11ec-87e9-c3313f204cf8" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [],
          enum_values: [],
          id: "6c0851d6-8a10-11ec-87e9-c3313f204cf8",
          intersection_of: [],
          is_abstract: true,
          kind: "object",
          material_id: [],
          name: "std::BaseObject",
          pointers: [
            %{
              has_default: true,
              id: "6c08a16f-8a10-11ec-9625-e1feb6335812",
              is_exclusive: true,
              is_writable: false,
              kind: "property",
              name: "id",
              pointers: [],
              real_cardinality: "One",
              target_id: "00000000-0000-0000-0000-000000000100"
            },
            %{
              has_default: false,
              id: "6cbb32d4-8a10-11ec-8fa5-930a7267a04f",
              is_exclusive: false,
              is_writable: false,
              kind: "link",
              name: "__type__",
              pointers: [],
              real_cardinality: "One",
              target_id: "6c91fdfe-8a10-11ec-bacd-f11d47fae198"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "733761d3-8a10-11ec-afc7-b715ca405de5" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "7268fc76-8a10-11ec-8ce8-45c375a2833a"}],
          enum_values: [],
          id: "733761d3-8a10-11ec-afc7-b715ca405de5",
          intersection_of: [],
          is_abstract: false,
          kind: "object",
          material_id: [],
          name: "cfg::DatabaseConfig",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "663d299d-8a10-11ec-8771-93e1a9b330f4" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "6630e5b7-8a10-11ec-856b-650e11726a69"}],
          enum_values: [],
          id: "663d299d-8a10-11ec-8771-93e1a9b330f4",
          intersection_of: [],
          is_abstract: true,
          kind: "scalar",
          material_id: [],
          name: "std::anyenum",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "44a76fab-349d-00e9-396b-1000d7e967da" => %{
          array_element_id: "00000000-0000-0000-0000-00000000010b",
          backlink_stubs: [],
          backlinks: [],
          bases: [],
          enum_values: [],
          id: "44a76fab-349d-00e9-396b-1000d7e967da",
          intersection_of: [],
          is_abstract: false,
          kind: "array",
          material_id: [],
          name: "array<cal::local_datetime>",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "6f1f91f9-8a10-11ec-8c7d-619274614b24" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [
            %{id: "6d9b4271-8a10-11ec-9398-c1997d33e06f"},
            %{id: "6e765f11-8a10-11ec-a861-d9b160ab5324"},
            %{id: "6d849f36-8a10-11ec-9fd0-0d13e4601f2c"},
            %{id: "6ce66efb-8a10-11ec-94a5-e70471af7c4d"}
          ],
          enum_values: [],
          id: "6f1f91f9-8a10-11ec-8c7d-619274614b24",
          intersection_of: [],
          is_abstract: false,
          kind: "object",
          material_id: [],
          name: "schema::ScalarType",
          pointers: [
            %{
              has_default: false,
              id: "6f2e48d3-8a10-11ec-ab8b-059a6a6e8aa9",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "default",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000101"
            },
            %{
              has_default: false,
              id: "6f2e8272-8a10-11ec-9c70-ef3ba074c8f0",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "enum_values",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "05f91774-15ea-9001-038e-092c1cad80af"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "c1532ff4-91d9-11ec-a73f-09eee86c5ef9" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "c151938f-91d9-11ec-a0b8-19a30ae39783"}],
          enum_values: [],
          id: "c1532ff4-91d9-11ec-a73f-09eee86c5ef9",
          intersection_of: [],
          is_abstract: false,
          kind: "scalar",
          material_id: "00000000-0000-0000-0000-000000000101",
          name: "default::🚀🚀🚀",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "6d849f36-8a10-11ec-9fd0-0d13e4601f2c" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "6c7a7341-8a10-11ec-a7ad-3f5a92d98a26"}],
          enum_values: [],
          id: "6d849f36-8a10-11ec-9fd0-0d13e4601f2c",
          intersection_of: [],
          is_abstract: true,
          kind: "object",
          material_id: [],
          name: "schema::AnnotationSubject",
          pointers: [
            %{
              has_default: false,
              id: "6d87aedc-8a10-11ec-98c3-ff49b8c0930c",
              is_exclusive: false,
              is_writable: true,
              kind: "link",
              name: "annotations",
              pointers: [
                %{
                  id: "6d88309a-8a10-11ec-9e9d-b9d6234749d3",
                  is_writable: true,
                  kind: "property",
                  name: "@owned",
                  real_cardinality: "AtMostOne",
                  target_id: "00000000-0000-0000-0000-000000000109"
                },
                %{
                  id: "6d88615e-8a10-11ec-b315-efd0f1e708d8",
                  is_writable: true,
                  kind: "property",
                  name: "@is_owned",
                  real_cardinality: "AtMostOne",
                  target_id: "00000000-0000-0000-0000-000000000109"
                },
                %{
                  id: "6d88f260-8a10-11ec-99c5-9558bcb82b99",
                  is_writable: true,
                  kind: "property",
                  name: "@value",
                  real_cardinality: "AtMostOne",
                  target_id: "00000000-0000-0000-0000-000000000101"
                }
              ],
              real_cardinality: "Many",
              target_id: "6d740f6e-8a10-11ec-9b29-d15dc72dfc10"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "722e05a0-8a10-11ec-b24d-0774edeaa026" => %{
          array_element_id: [],
          backlink_stubs: [
            %{
              id: "625fd0f0-91d9-11ec-a293-4b2dc324d335",
              is_exclusive: false,
              kind: "link",
              name: "<method",
              real_cardinality: "Many",
              target_id: "6c0851d6-8a10-11ec-87e9-c3313f204cf8"
            }
          ],
          backlinks: [
            %{
              id: "7254ab03-8a10-11ec-bd14-f578bfa3f5af",
              is_exclusive: true,
              kind: "link",
              name: "<method[is cfg::Auth]",
              real_cardinality: "AtMostOne",
              stub: "method",
              target_id: "72514fda-8a10-11ec-af60-f910ee609a28"
            }
          ],
          bases: [%{id: "722254b3-8a10-11ec-8402-0bfe9e5855c7"}],
          enum_values: [],
          id: "722e05a0-8a10-11ec-b24d-0774edeaa026",
          intersection_of: [],
          is_abstract: true,
          kind: "object",
          material_id: [],
          name: "cfg::AuthMethod",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "71cd24b7-8a10-11ec-97c8-f7bb57d624cc" => %{
          array_element_id: [],
          backlink_stubs: [
            %{
              id: "625fd0f0-91d9-11ec-a293-4b2dc324d335",
              is_exclusive: false,
              kind: "link",
              name: "<member_of",
              real_cardinality: "Many",
              target_id: "6c0851d6-8a10-11ec-87e9-c3313f204cf8"
            }
          ],
          backlinks: [
            %{
              id: "71f4c157-8a10-11ec-acf7-b9ebf08ad671",
              is_exclusive: false,
              kind: "link",
              name: "<member_of[is sys::Role]",
              real_cardinality: "Many",
              stub: "member_of",
              target_id: "71cd24b7-8a10-11ec-97c8-f7bb57d624cc"
            }
          ],
          bases: [
            %{id: "71623468-8a10-11ec-b28a-7bada3f5ad0b"},
            %{id: "6d9b4271-8a10-11ec-9398-c1997d33e06f"},
            %{id: "6d849f36-8a10-11ec-9fd0-0d13e4601f2c"}
          ],
          enum_values: [],
          id: "71cd24b7-8a10-11ec-97c8-f7bb57d624cc",
          intersection_of: [],
          is_abstract: false,
          kind: "object",
          material_id: [],
          name: "sys::Role",
          pointers: [
            %{
              has_default: false,
              id: "71ceb1f6-8a10-11ec-82b6-7779d6107746",
              is_exclusive: true,
              is_writable: true,
              kind: "property",
              name: "name",
              pointers: [],
              real_cardinality: "One",
              target_id: "00000000-0000-0000-0000-000000000101"
            },
            %{
              has_default: false,
              id: "71d2a3dd-8a10-11ec-a73d-91265beb087c",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "superuser",
              pointers: [],
              real_cardinality: "One",
              target_id: "00000000-0000-0000-0000-000000000109"
            },
            %{
              has_default: false,
              id: "71d31fd8-8a10-11ec-b729-3d32fc6d2e6f",
              is_exclusive: false,
              is_writable: false,
              kind: "property",
              name: "is_superuser",
              pointers: [],
              real_cardinality: "One",
              target_id: "00000000-0000-0000-0000-000000000109"
            },
            %{
              has_default: false,
              id: "71d34eaa-8a10-11ec-8bf8-c7c32b32e29f",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "password",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000101"
            },
            %{
              has_default: false,
              id: "71f4c157-8a10-11ec-acf7-b9ebf08ad671",
              is_exclusive: false,
              is_writable: true,
              kind: "link",
              name: "member_of",
              pointers: [],
              real_cardinality: "Many",
              target_id: "71cd24b7-8a10-11ec-97c8-f7bb57d624cc"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "00000000-0000-0000-0000-00000000010f" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "6630e5b7-8a10-11ec-856b-650e11726a69"}],
          enum_values: [],
          id: "00000000-0000-0000-0000-00000000010f",
          intersection_of: [],
          is_abstract: false,
          kind: "scalar",
          material_id: [],
          name: "std::json",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "6c91fdfe-8a10-11ec-bacd-f11d47fae198" => %{
          array_element_id: [],
          backlink_stubs: [
            %{
              id: "625fd0f0-91d9-11ec-a293-4b2dc324d335",
              is_exclusive: false,
              kind: "link",
              name: "<__type__",
              real_cardinality: "Many",
              target_id: "6c0851d6-8a10-11ec-87e9-c3313f204cf8"
            },
            %{
              id: "625fd0f0-91d9-11ec-a293-4b2dc324d335",
              is_exclusive: false,
              kind: "link",
              name: "<element_type",
              real_cardinality: "Many",
              target_id: "6c0851d6-8a10-11ec-87e9-c3313f204cf8"
            },
            %{
              id: "625fd0f0-91d9-11ec-a293-4b2dc324d335",
              is_exclusive: false,
              kind: "link",
              name: "<from_type",
              real_cardinality: "Many",
              target_id: "6c0851d6-8a10-11ec-87e9-c3313f204cf8"
            },
            %{
              id: "625fd0f0-91d9-11ec-a293-4b2dc324d335",
              is_exclusive: false,
              kind: "link",
              name: "<return_type",
              real_cardinality: "Many",
              target_id: "6c0851d6-8a10-11ec-87e9-c3313f204cf8"
            },
            %{
              id: "625fd0f0-91d9-11ec-a293-4b2dc324d335",
              is_exclusive: false,
              kind: "link",
              name: "<target",
              real_cardinality: "Many",
              target_id: "6c0851d6-8a10-11ec-87e9-c3313f204cf8"
            },
            %{
              id: "625fd0f0-91d9-11ec-a293-4b2dc324d335",
              is_exclusive: false,
              kind: "link",
              name: "<to_type",
              real_cardinality: "Many",
              target_id: "6c0851d6-8a10-11ec-87e9-c3313f204cf8"
            },
            %{
              id: "625fd0f0-91d9-11ec-a293-4b2dc324d335",
              is_exclusive: false,
              kind: "link",
              name: "<type",
              real_cardinality: "Many",
              target_id: "6c0851d6-8a10-11ec-87e9-c3313f204cf8"
            }
          ],
          backlinks: [
            %{
              id: "6cbb32d4-8a10-11ec-8fa5-930a7267a04f",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is std::BaseObject]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "6c0851d6-8a10-11ec-87e9-c3313f204cf8"
            },
            %{
              id: "6cbbc2e1-8a10-11ec-8a24-4d44d4eda555",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is std::Object]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "6c0de05d-8a10-11ec-82e8-6fc6431aec91"
            },
            %{
              id: "6cbc420b-8a10-11ec-9ef4-fbc156c48aba",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is std::FreeObject]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "6c13df00-8a10-11ec-b188-c9dff3b2685a"
            },
            %{
              id: "6cbcb2be-8a10-11ec-b451-d37a9b26900b",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is schema::Object]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "6c7a7341-8a10-11ec-a7ad-3f5a92d98a26"
            },
            %{
              id: "6cbd2dde-8a10-11ec-9b91-476c2e77171f",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is schema::SubclassableObject]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "6c83561f-8a10-11ec-bc8a-c757b42dec44"
            },
            %{
              id: "6d1f94f0-8a10-11ec-bb5b-595636698a04",
              is_exclusive: false,
              kind: "link",
              name: "<element_type[is schema::Array]",
              real_cardinality: "Many",
              stub: "element_type",
              target_id: "6d189319-8a10-11ec-a0a4-37ac70110c38"
            },
            %{
              id: "6d3782ae-8a10-11ec-a1ad-bdb353388e9f",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is schema::TupleElement]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "6d362a1b-8a10-11ec-be37-b30418a69bcc"
            },
            %{
              id: "6d37f36b-8a10-11ec-acf4-c5129d8dc750",
              is_exclusive: false,
              kind: "link",
              name: "<type[is schema::TupleElement]",
              real_cardinality: "Many",
              stub: "type",
              target_id: "6d362a1b-8a10-11ec-be37-b30418a69bcc"
            },
            %{
              id: "6d64a005-8a10-11ec-b3a5-8bf8a31fc6c5",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is schema::Delta]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "6d622c47-8a10-11ec-bab6-3ffcb1b91de8"
            },
            %{
              id: "6d8722a4-8a10-11ec-b13c-0581df51190b",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is schema::AnnotationSubject]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "6d849f36-8a10-11ec-9fd0-0d13e4601f2c"
            },
            %{
              id: "6d9fdb98-8a10-11ec-9c07-634bfdbc4048",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is schema::InheritingObject]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "6d9b4271-8a10-11ec-9398-c1997d33e06f"
            },
            %{
              id: "6dbde57d-8a10-11ec-a10c-115a6e2e6fb5",
              is_exclusive: false,
              kind: "link",
              name: "<type[is schema::Parameter]",
              real_cardinality: "Many",
              stub: "type",
              target_id: "6dbacd17-8a10-11ec-afcb-17fc7726838f"
            },
            %{
              id: "6dd6800f-8a10-11ec-a774-bf1c50550b21",
              is_exclusive: false,
              kind: "link",
              name: "<return_type[is schema::CallableObject]",
              real_cardinality: "Many",
              stub: "return_type",
              target_id: "6dd14eb7-8a10-11ec-b180-493af67bf9e1"
            },
            %{
              id: "6df35a33-8a10-11ec-905d-21f5af788f2a",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is schema::VolatilitySubject]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "6df135ee-8a10-11ec-a8d9-99c01dadf85e"
            },
            %{
              id: "70be8043-8a10-11ec-8fa0-a31397bac4b1",
              is_exclusive: false,
              kind: "link",
              name: "<from_type[is schema::Cast]",
              real_cardinality: "Many",
              stub: "from_type",
              target_id: "70b99db6-8a10-11ec-8d04-ff4067c35e44"
            },
            %{
              id: "6f063cbf-8a10-11ec-acee-83d8c9cb6e4d",
              is_exclusive: false,
              kind: "link",
              name: "<type[is schema::Alias]",
              real_cardinality: "Many",
              stub: "type",
              target_id: "6f016d3b-8a10-11ec-8a79-91a452a615bd"
            },
            %{
              id: "70beef25-8a10-11ec-bd1c-9594ec5ca224",
              is_exclusive: false,
              kind: "link",
              name: "<to_type[is schema::Cast]",
              real_cardinality: "Many",
              stub: "to_type",
              target_id: "70b99db6-8a10-11ec-8d04-ff4067c35e44"
            },
            %{
              id: "7037fa15-8a10-11ec-bb4a-a5e575f5d060",
              is_exclusive: false,
              kind: "link",
              name: "<target[is schema::Pointer]",
              real_cardinality: "Many",
              stub: "target",
              target_id: "6ec179d6-8a10-11ec-bdac-c7e157d08163"
            },
            %{
              id: "7164a607-8a10-11ec-8e24-1b2cbb1b0391",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is sys::SystemObject]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "71623468-8a10-11ec-b28a-7bada3f5ad0b"
            },
            %{
              id: "7223dab7-8a10-11ec-9aa0-df828a8ec0d0",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is cfg::ConfigObject]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "722254b3-8a10-11ec-8402-0bfe9e5855c7"
            },
            %{
              id: "722f3b6e-8a10-11ec-b62d-5d233f5877a6",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is cfg::AuthMethod]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "722e05a0-8a10-11ec-b24d-0774edeaa026"
            },
            %{
              id: "723a6289-8a10-11ec-93ad-aded4ec8368d",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is cfg::Trust]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "72393e53-8a10-11ec-8ec7-470c3b22d04f"
            },
            %{
              id: "7245be70-8a10-11ec-9d47-a564aea0c650",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is cfg::SCRAM]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "72446121-8a10-11ec-a0ee-0f0637eee6d9"
            },
            %{
              id: "7253040f-8a10-11ec-b9e6-7ffb41f9f457",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is cfg::Auth]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "72514fda-8a10-11ec-af60-f910ee609a28"
            },
            %{
              id: "726a4288-8a10-11ec-8f19-833abca01c7e",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is cfg::AbstractConfig]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "7268fc76-8a10-11ec-8ce8-45c375a2833a"
            },
            %{
              id: "72dea906-8a10-11ec-8028-35e9455b34c1",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is cfg::Config]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "7291cb6a-8a10-11ec-97d6-f100f3be2691"
            },
            %{
              id: "730b781f-8a10-11ec-bf37-2732e7d36219",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is cfg::InstanceConfig]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "7309eaa6-8a10-11ec-9f02-93e426acb102"
            },
            %{
              id: "73390c7d-8a10-11ec-8995-9bdf310b57a3",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is cfg::DatabaseConfig]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "733761d3-8a10-11ec-afc7-b715ca405de5"
            },
            %{
              id: "6d76818e-8a10-11ec-898a-17c8b0fe4fd6",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is schema::Annotation]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "6d740f6e-8a10-11ec-9b29-d15dc72dfc10"
            },
            %{
              id: "6cbdf10a-8a10-11ec-83ce-d141e5b995a2",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is schema::Type]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "6c91fdfe-8a10-11ec-bacd-f11d47fae198"
            },
            %{
              id: "6cecaf65-8a10-11ec-9f82-4fb2b83988f2",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is schema::PrimitiveType]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "6ce66efb-8a10-11ec-94a5-e70471af7c4d"
            },
            %{
              id: "6d0574f5-8a10-11ec-9245-43a010a5fd64",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is schema::CollectionType]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "6cfed211-8a10-11ec-b484-8bfa3d691a5b"
            },
            %{
              id: "6d1f170d-8a10-11ec-95f7-b309f89a7870",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is schema::Array]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "6d189319-8a10-11ec-a0a4-37ac70110c38"
            },
            %{
              id: "6d48cb8f-8a10-11ec-84a0-47ba9ac0beee",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is schema::Tuple]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "6d42ac80-8a10-11ec-9de3-a7a5e22f749b"
            },
            %{
              id: "6dbd2930-8a10-11ec-91c6-09d67db52cfc",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is schema::Parameter]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "6dbacd17-8a10-11ec-afcb-17fc7726838f"
            },
            %{
              id: "6dd3ae32-8a10-11ec-9c28-479b11a1b10c",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is schema::CallableObject]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "6dd14eb7-8a10-11ec-b180-493af67bf9e1"
            },
            %{
              id: "706dc99b-8a10-11ec-98fa-0561b0e598b5",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is schema::Function]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "706af6a3-8a10-11ec-a8db-99fefbf8cf3d"
            },
            %{
              id: "70705fd0-8a10-11ec-be02-0b892a0f4100",
              is_exclusive: false,
              kind: "link",
              name: "<return_type[is schema::Function]",
              real_cardinality: "Many",
              stub: "return_type",
              target_id: "706af6a3-8a10-11ec-a8db-99fefbf8cf3d"
            },
            %{
              id: "7093bbc7-8a10-11ec-b401-53cda4cb3008",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is schema::Operator]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "70913227-8a10-11ec-ab7a-3fb0e1f3f58d"
            },
            %{
              id: "70965116-8a10-11ec-a157-019cd3bfb6bf",
              is_exclusive: false,
              kind: "link",
              name: "<return_type[is schema::Operator]",
              real_cardinality: "Many",
              stub: "return_type",
              target_id: "70913227-8a10-11ec-ab7a-3fb0e1f3f58d"
            },
            %{
              id: "70bc7885-8a10-11ec-a89f-8fae4849b9a6",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is schema::Cast]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "70b99db6-8a10-11ec-8d04-ff4067c35e44"
            },
            %{
              id: "70e16954-8a10-11ec-a3d5-f1c2f2083e39",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is schema::Migration]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "70df00bd-8a10-11ec-adae-d9b84c027d1c"
            },
            %{
              id: "6cdb6285-8a10-11ec-b74a-1707cbfcd652",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is schema::Module]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "6cd8c5f0-8a10-11ec-9e45-2ba0c6a86f2d"
            },
            %{
              id: "6e04c5f5-8a10-11ec-a0a9-e3528be11647",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is schema::Constraint]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "6e01f436-8a10-11ec-9117-0f2b60a3b4d5"
            },
            %{
              id: "6e078b28-8a10-11ec-ba77-976ad5608608",
              is_exclusive: false,
              kind: "link",
              name: "<return_type[is schema::Constraint]",
              real_cardinality: "Many",
              stub: "return_type",
              target_id: "6e01f436-8a10-11ec-9117-0f2b60a3b4d5"
            },
            %{
              id: "6e7901f4-8a10-11ec-a6ea-c50786b85c4b",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is schema::ConsistencySubject]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "6e765f11-8a10-11ec-a861-d9b160ab5324"
            },
            %{
              id: "6f25ce16-8a10-11ec-ab1d-9d63473eeb42",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is schema::ScalarType]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "6f1f91f9-8a10-11ec-8c7d-619274614b24"
            },
            %{
              id: "6cbe8191-8a10-11ec-8084-03e60f57f1d3",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is schema::PseudoType]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "6ca1e64e-8a10-11ec-aeca-991b168db9d2"
            },
            %{
              id: "6e972915-8a10-11ec-9373-239b231c08c2",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is schema::Index]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "6e946f77-8a10-11ec-948c-2fb05007b715"
            },
            %{
              id: "6f0435d6-8a10-11ec-aa7e-2bf5e6256769",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is schema::Alias]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "6f016d3b-8a10-11ec-8a79-91a452a615bd"
            },
            %{
              id: "6ec6b3c7-8a10-11ec-936b-a75d9f79f4b5",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is schema::Pointer]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "6ec179d6-8a10-11ec-bdac-c7e157d08163"
            },
            %{
              id: "70009e0c-8a10-11ec-8a43-4b95ecb63528",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is schema::Property]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "6ffb3e67-8a10-11ec-9d89-5f1de95272c4"
            },
            %{
              id: "703919a8-8a10-11ec-b539-117b7f8b85e1",
              is_exclusive: false,
              kind: "link",
              name: "<target[is schema::Property]",
              real_cardinality: "Many",
              stub: "target",
              target_id: "6ffb3e67-8a10-11ec-9d89-5f1de95272c4"
            },
            %{
              id: "6eae3aab-8a10-11ec-aefc-abe1e39cab92",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is schema::Source]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "6eab94c9-8a10-11ec-9d43-ad67d08c6d68"
            },
            %{
              id: "6fb763fd-8a10-11ec-875d-dd6e6364b8ce",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is schema::Link]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "6fb26983-8a10-11ec-bb96-c5decb666559"
            },
            %{
              id: "6f66c13b-8a10-11ec-b537-a3c9f12c7abc",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is schema::ObjectType]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "6f60f97a-8a10-11ec-89c8-bfc584a2e355"
            },
            %{
              id: "71cfc6ae-8a10-11ec-98e2-0fae83044ff0",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is sys::Role]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "71cd24b7-8a10-11ec-97c8-f7bb57d624cc"
            },
            %{
              id: "71a35729-8a10-11ec-9c12-d524fc3c14de",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is sys::ExtensionPackage]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "71a075c2-8a10-11ec-b931-ed6ae24a5f34"
            },
            %{
              id: "70ff959c-8a10-11ec-8dbe-51eb15f05633",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is schema::Extension]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "70fcf368-8a10-11ec-901d-5d56207a3f8a"
            },
            %{
              id: "71807f23-8a10-11ec-be59-8dfaf28c1b0e",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is sys::Database]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "717e334f-8a10-11ec-8756-65a22eb6394f"
            },
            %{
              id: "c1484b61-91d9-11ec-9bee-dfde6794ac2c",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is HasAge]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "c1474a0c-91d9-11ec-9b87-bbd83ad8c283"
            },
            %{
              id: "c149aa2e-91d9-11ec-a5f0-9999d749d29b",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is HasName]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "c148c177-91d9-11ec-acab-f1387c995c49"
            },
            %{
              id: "c14b45a0-91d9-11ec-a28e-6560c981a025",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is Bag]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "c14a37c5-91d9-11ec-b156-01fed3d58c5f"
            },
            %{
              id: "c15126e5-91d9-11ec-9a11-e9d970e6eb0d",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is A]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "c15033c7-91d9-11ec-a8be-6130115c11f7"
            },
            %{
              id: "c155718f-91d9-11ec-b61b-3d3ae07096a2",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is Łukasz]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "c1547a5c-91d9-11ec-bdcb-0dd51d42fb79"
            },
            %{
              id: "c15a442e-91d9-11ec-9d2f-af666ebf6709",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is S p a M]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "c15908ec-91d9-11ec-bc1f-7be915728ec6"
            },
            %{
              id: "c15d0ef8-91d9-11ec-8f79-ef2d8c77a42c",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is Person]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "c15c0519-91d9-11ec-8cd7-0be66120fdf5"
            },
            %{
              id: "c15f0eb5-91d9-11ec-a380-45f32a5fa8c2",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is Profile]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "c15e18c1-91d9-11ec-bc66-693a16a07f31"
            },
            %{
              id: "c1607e6d-91d9-11ec-af6e-cb33bc7b7950",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is Movie]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "c15f9041-91d9-11ec-842c-7db96eec4792"
            },
            %{
              id: "c1656a48-91d9-11ec-985e-0718f192c521",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is Simple]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "c164645a-91d9-11ec-b776-57417e92f3ba"
            },
            %{
              id: "c166ffdb-91d9-11ec-87ac-ddfbf898f256",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is Hero]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "c16608fe-91d9-11ec-bb2a-ab2c337ace3c"
            },
            %{
              id: "c1692a74-91d9-11ec-ab24-3f3b4cbbdbd7",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is Villain]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "c16826e1-91d9-11ec-a04b-6b6d32ba370b"
            },
            %{
              id: "c175d37e-91d9-11ec-b024-3f7d4cfd80ad",
              is_exclusive: false,
              kind: "link",
              name: "<__type__[is MovieShape]",
              real_cardinality: "Many",
              stub: "__type__",
              target_id: "c174c646-91d9-11ec-9da6-af81b3f79fd0"
            }
          ],
          bases: [
            %{id: "6c83561f-8a10-11ec-bc8a-c757b42dec44"},
            %{id: "6d849f36-8a10-11ec-9fd0-0d13e4601f2c"}
          ],
          enum_values: [],
          id: "6c91fdfe-8a10-11ec-bacd-f11d47fae198",
          intersection_of: [],
          is_abstract: true,
          kind: "object",
          material_id: [],
          name: "schema::Type",
          pointers: [
            %{
              has_default: false,
              id: "6cb2255a-8a10-11ec-8807-d33f76251ae4",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "expr",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000101"
            },
            %{
              has_default: false,
              id: "6cb30634-8a10-11ec-ba2c-875d4d2f8fea",
              is_exclusive: false,
              is_writable: false,
              kind: "property",
              name: "from_alias",
              pointers: [],
              real_cardinality: "One",
              target_id: "00000000-0000-0000-0000-000000000109"
            },
            %{
              has_default: false,
              id: "6cb463d8-8a10-11ec-bc9f-615477cec4c9",
              is_exclusive: false,
              is_writable: false,
              kind: "property",
              name: "is_from_alias",
              pointers: [],
              real_cardinality: "One",
              target_id: "00000000-0000-0000-0000-000000000109"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "6ec179d6-8a10-11ec-bdac-c7e157d08163" => %{
          array_element_id: [],
          backlink_stubs: [
            %{
              id: "625fd0f0-91d9-11ec-a293-4b2dc324d335",
              is_exclusive: false,
              kind: "link",
              name: "<pointers",
              real_cardinality: "Many",
              target_id: "6c0851d6-8a10-11ec-87e9-c3313f204cf8"
            }
          ],
          backlinks: [
            %{
              id: "6ef88adc-8a10-11ec-a425-d97472c27a60",
              is_exclusive: false,
              kind: "link",
              name: "<pointers[is schema::Source]",
              real_cardinality: "AtMostOne",
              stub: "pointers",
              target_id: "6eab94c9-8a10-11ec-9d43-ad67d08c6d68"
            },
            %{
              id: "6fbf2144-8a10-11ec-87e9-c57badc5ebc7",
              is_exclusive: false,
              kind: "link",
              name: "<pointers[is schema::Link]",
              real_cardinality: "AtMostOne",
              stub: "pointers",
              target_id: "6fb26983-8a10-11ec-bb96-c5decb666559"
            },
            %{
              id: "6f6f716c-8a10-11ec-90bc-ff110200bf13",
              is_exclusive: false,
              kind: "link",
              name: "<pointers[is schema::ObjectType]",
              real_cardinality: "AtMostOne",
              stub: "pointers",
              target_id: "6f60f97a-8a10-11ec-89c8-bfc584a2e355"
            }
          ],
          bases: [
            %{id: "6d9b4271-8a10-11ec-9398-c1997d33e06f"},
            %{id: "6e765f11-8a10-11ec-a861-d9b160ab5324"},
            %{id: "6d849f36-8a10-11ec-9fd0-0d13e4601f2c"}
          ],
          enum_values: [],
          id: "6ec179d6-8a10-11ec-bdac-c7e157d08163",
          intersection_of: [],
          is_abstract: true,
          kind: "object",
          material_id: [],
          name: "schema::Pointer",
          pointers: [
            %{
              has_default: false,
              id: "6eccd122-8a10-11ec-b1d5-c1a0ff375029",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "cardinality",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "6c76a6a4-8a10-11ec-a6ac-7bbb13b222ae"
            },
            %{
              has_default: false,
              id: "6ecd084e-8a10-11ec-aa4e-ab13f5a10cff",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "required",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000109"
            },
            %{
              has_default: false,
              id: "6ecd369b-8a10-11ec-a53a-49795a6f2a47",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "readonly",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000109"
            },
            %{
              has_default: false,
              id: "6ecd6498-8a10-11ec-aa33-4d3a9ddced63",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "default",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000101"
            },
            %{
              has_default: false,
              id: "6ecd9524-8a10-11ec-bc02-913b293e57dc",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "expr",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000101"
            },
            %{
              has_default: false,
              id: "70366034-8a10-11ec-8860-e78ecbe1d6f7",
              is_exclusive: false,
              is_writable: true,
              kind: "link",
              name: "source",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "6eab94c9-8a10-11ec-9d43-ad67d08c6d68"
            },
            %{
              has_default: false,
              id: "7037fa15-8a10-11ec-bb4a-a5e575f5d060",
              is_exclusive: false,
              is_writable: true,
              kind: "link",
              name: "target",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "6c91fdfe-8a10-11ec-bacd-f11d47fae198"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "6cfed211-8a10-11ec-b484-8bfa3d691a5b" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "6ce66efb-8a10-11ec-94a5-e70471af7c4d"}],
          enum_values: [],
          id: "6cfed211-8a10-11ec-b484-8bfa3d691a5b",
          intersection_of: [],
          is_abstract: true,
          kind: "object",
          material_id: [],
          name: "schema::CollectionType",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "c164645a-91d9-11ec-b776-57417e92f3ba" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [
            %{id: "c148c177-91d9-11ec-acab-f1387c995c49"},
            %{id: "c1474a0c-91d9-11ec-9b87-bbd83ad8c283"}
          ],
          enum_values: [],
          id: "c164645a-91d9-11ec-b776-57417e92f3ba",
          intersection_of: [],
          is_abstract: false,
          kind: "object",
          material_id: [],
          name: "default::Simple",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "05f91774-15ea-9001-038e-092c1cad80af" => %{
          array_element_id: "00000000-0000-0000-0000-000000000101",
          backlink_stubs: [],
          backlinks: [],
          bases: [],
          enum_values: [],
          id: "05f91774-15ea-9001-038e-092c1cad80af",
          intersection_of: [],
          is_abstract: false,
          kind: "array",
          material_id: [],
          name: "array<std::str>",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "00000000-0000-0000-0000-000000000106" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "6638bd21-8a10-11ec-92fa-a1f2c208052b"}],
          cast_only_type: "00000000-0000-0000-0000-0000000001ff",
          enum_values: [],
          id: "00000000-0000-0000-0000-000000000106",
          intersection_of: [],
          is_abstract: false,
          kind: "scalar",
          material_id: [],
          name: "std::float32",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "076e1d6f-f104-88b2-0632-d53171d9c827" => %{
          array_element_id: "00000000-0000-0000-0000-00000000010c",
          backlink_stubs: [],
          backlinks: [],
          bases: [],
          enum_values: [],
          id: "076e1d6f-f104-88b2-0632-d53171d9c827",
          intersection_of: [],
          is_abstract: false,
          kind: "array",
          material_id: [],
          name: "array<cal::local_date>",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "00000000-0000-0000-0000-00000000010b" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "6630e5b7-8a10-11ec-856b-650e11726a69"}],
          enum_values: [],
          id: "00000000-0000-0000-0000-00000000010b",
          intersection_of: [],
          is_abstract: false,
          kind: "scalar",
          material_id: [],
          name: "cal::local_datetime",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "c1547a5c-91d9-11ec-bdcb-0dd51d42fb79" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "6c0de05d-8a10-11ec-82e8-6fc6431aec91"}],
          enum_values: [],
          id: "c1547a5c-91d9-11ec-bdcb-0dd51d42fb79",
          intersection_of: [],
          is_abstract: false,
          kind: "object",
          material_id: [],
          name: "default::Łukasz",
          pointers: [
            %{
              has_default: false,
              id: "c155d600-91d9-11ec-be73-e979dac21c79",
              is_exclusive: false,
              is_writable: true,
              kind: "link",
              name: "Ł💯",
              pointers: [
                %{
                  id: "c156441a-91d9-11ec-bd0a-7fbaad8efd82",
                  is_writable: true,
                  kind: "property",
                  name: "@🙀مرحبا🙀",
                  real_cardinality: "AtMostOne",
                  target_id: "c151938f-91d9-11ec-a0b8-19a30ae39783"
                },
                %{
                  id: "c1585290-91d9-11ec-9ffc-31e9115f654c",
                  is_writable: true,
                  kind: "property",
                  name: "@🙀🚀🚀🚀🙀",
                  real_cardinality: "AtMostOne",
                  target_id: "c1532ff4-91d9-11ec-a73f-09eee86c5ef9"
                }
              ],
              real_cardinality: "AtMostOne",
              target_id: "c15033c7-91d9-11ec-a8be-6130115c11f7"
            },
            %{
              has_default: true,
              id: "c15891f0-91d9-11ec-ba16-7576629dfae4",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "Ł🤞",
              pointers: [],
              real_cardinality: "One",
              target_id: "c1532ff4-91d9-11ec-a73f-09eee86c5ef9"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "6d740f6e-8a10-11ec-9b29-d15dc72dfc10" => %{
          array_element_id: [],
          backlink_stubs: [
            %{
              id: "625fd0f0-91d9-11ec-a293-4b2dc324d335",
              is_exclusive: false,
              kind: "link",
              name: "<annotations",
              real_cardinality: "Many",
              target_id: "6c0851d6-8a10-11ec-87e9-c3313f204cf8"
            }
          ],
          backlinks: [
            %{
              id: "6d87aedc-8a10-11ec-98c3-ff49b8c0930c",
              is_exclusive: false,
              kind: "link",
              name: "<annotations[is schema::AnnotationSubject]",
              real_cardinality: "Many",
              stub: "annotations",
              target_id: "6d849f36-8a10-11ec-9fd0-0d13e4601f2c"
            },
            %{
              id: "71652967-8a10-11ec-917d-bbf8f726f2fd",
              is_exclusive: false,
              kind: "link",
              name: "<annotations[is sys::SystemObject]",
              real_cardinality: "Many",
              stub: "annotations",
              target_id: "71623468-8a10-11ec-b28a-7bada3f5ad0b"
            },
            %{
              id: "6dd4574c-8a10-11ec-9eb0-f5c60b4a6835",
              is_exclusive: false,
              kind: "link",
              name: "<annotations[is schema::CallableObject]",
              real_cardinality: "Many",
              stub: "annotations",
              target_id: "6dd14eb7-8a10-11ec-b180-493af67bf9e1"
            },
            %{
              id: "706e50b2-8a10-11ec-b4bc-4f818a145cbf",
              is_exclusive: false,
              kind: "link",
              name: "<annotations[is schema::Function]",
              real_cardinality: "Many",
              stub: "annotations",
              target_id: "706af6a3-8a10-11ec-a8db-99fefbf8cf3d"
            },
            %{
              id: "7094445f-8a10-11ec-a88e-edce542b87bb",
              is_exclusive: false,
              kind: "link",
              name: "<annotations[is schema::Operator]",
              real_cardinality: "Many",
              stub: "annotations",
              target_id: "70913227-8a10-11ec-ab7a-3fb0e1f3f58d"
            },
            %{
              id: "70bcf329-8a10-11ec-90c5-b707e1e40dc6",
              is_exclusive: false,
              kind: "link",
              name: "<annotations[is schema::Cast]",
              real_cardinality: "Many",
              stub: "annotations",
              target_id: "70b99db6-8a10-11ec-8d04-ff4067c35e44"
            },
            %{
              id: "70e1cfe1-8a10-11ec-acb1-cddac3045cf1",
              is_exclusive: false,
              kind: "link",
              name: "<annotations[is schema::Migration]",
              real_cardinality: "Many",
              stub: "annotations",
              target_id: "70df00bd-8a10-11ec-adae-d9b84c027d1c"
            },
            %{
              id: "6e054d53-8a10-11ec-9daf-ef4b20deefdc",
              is_exclusive: false,
              kind: "link",
              name: "<annotations[is schema::Constraint]",
              real_cardinality: "Many",
              stub: "annotations",
              target_id: "6e01f436-8a10-11ec-9117-0f2b60a3b4d5"
            },
            %{
              id: "6f2ab6a5-8a10-11ec-be69-7decef678afa",
              is_exclusive: false,
              kind: "link",
              name: "<annotations[is schema::ScalarType]",
              real_cardinality: "Many",
              stub: "annotations",
              target_id: "6f1f91f9-8a10-11ec-8c7d-619274614b24"
            },
            %{
              id: "6e979aa5-8a10-11ec-9a12-6da616b6d1dc",
              is_exclusive: false,
              kind: "link",
              name: "<annotations[is schema::Index]",
              real_cardinality: "Many",
              stub: "annotations",
              target_id: "6e946f77-8a10-11ec-948c-2fb05007b715"
            },
            %{
              id: "6f04ac3c-8a10-11ec-80c2-8d9d7f9655d7",
              is_exclusive: false,
              kind: "link",
              name: "<annotations[is schema::Alias]",
              real_cardinality: "Many",
              stub: "annotations",
              target_id: "6f016d3b-8a10-11ec-8a79-91a452a615bd"
            },
            %{
              id: "6ecb1b8a-8a10-11ec-bec1-49b7018c44ae",
              is_exclusive: false,
              kind: "link",
              name: "<annotations[is schema::Pointer]",
              real_cardinality: "Many",
              stub: "annotations",
              target_id: "6ec179d6-8a10-11ec-bdac-c7e157d08163"
            },
            %{
              id: "70048037-8a10-11ec-ad1b-4b1498d3d8a4",
              is_exclusive: false,
              kind: "link",
              name: "<annotations[is schema::Property]",
              real_cardinality: "Many",
              stub: "annotations",
              target_id: "6ffb3e67-8a10-11ec-9d89-5f1de95272c4"
            },
            %{
              id: "6fbbc675-8a10-11ec-b504-8b6b522ce9d4",
              is_exclusive: false,
              kind: "link",
              name: "<annotations[is schema::Link]",
              real_cardinality: "Many",
              stub: "annotations",
              target_id: "6fb26983-8a10-11ec-bb96-c5decb666559"
            },
            %{
              id: "6f6b1407-8a10-11ec-8a17-6dcd45d2712c",
              is_exclusive: false,
              kind: "link",
              name: "<annotations[is schema::ObjectType]",
              real_cardinality: "Many",
              stub: "annotations",
              target_id: "6f60f97a-8a10-11ec-89c8-bfc584a2e355"
            },
            %{
              id: "71d04ded-8a10-11ec-b05f-5db10e1caa24",
              is_exclusive: false,
              kind: "link",
              name: "<annotations[is sys::Role]",
              real_cardinality: "Many",
              stub: "annotations",
              target_id: "71cd24b7-8a10-11ec-97c8-f7bb57d624cc"
            },
            %{
              id: "71a3dc96-8a10-11ec-a99e-bda6c024e7c3",
              is_exclusive: false,
              kind: "link",
              name: "<annotations[is sys::ExtensionPackage]",
              real_cardinality: "Many",
              stub: "annotations",
              target_id: "71a075c2-8a10-11ec-b931-ed6ae24a5f34"
            },
            %{
              id: "71000d04-8a10-11ec-9d70-197a458f1c04",
              is_exclusive: false,
              kind: "link",
              name: "<annotations[is schema::Extension]",
              real_cardinality: "Many",
              stub: "annotations",
              target_id: "70fcf368-8a10-11ec-901d-5d56207a3f8a"
            },
            %{
              id: "71810536-8a10-11ec-9fd2-a3e6e600b98c",
              is_exclusive: false,
              kind: "link",
              name: "<annotations[is sys::Database]",
              real_cardinality: "Many",
              stub: "annotations",
              target_id: "717e334f-8a10-11ec-8756-65a22eb6394f"
            }
          ],
          bases: [
            %{id: "6c7a7341-8a10-11ec-a7ad-3f5a92d98a26"},
            %{id: "6d9b4271-8a10-11ec-9398-c1997d33e06f"}
          ],
          enum_values: [],
          id: "6d740f6e-8a10-11ec-9b29-d15dc72dfc10",
          intersection_of: [],
          is_abstract: false,
          kind: "object",
          material_id: [],
          name: "schema::Annotation",
          pointers: [
            %{
              has_default: false,
              id: "6d76ec3d-8a10-11ec-955e-11c92b1a3e1d",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "inheritable",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000109"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "72514fda-8a10-11ec-af60-f910ee609a28" => %{
          array_element_id: [],
          backlink_stubs: [
            %{
              id: "625fd0f0-91d9-11ec-a293-4b2dc324d335",
              is_exclusive: false,
              kind: "link",
              name: "<auth",
              real_cardinality: "Many",
              target_id: "6c0851d6-8a10-11ec-87e9-c3313f204cf8"
            }
          ],
          backlinks: [
            %{
              id: "726d2bf9-8a10-11ec-acfe-1178a8bf4afb",
              is_exclusive: false,
              kind: "link",
              name: "<auth[is cfg::AbstractConfig]",
              real_cardinality: "Many",
              stub: "auth",
              target_id: "7268fc76-8a10-11ec-8ce8-45c375a2833a"
            },
            %{
              id: "72e1a279-8a10-11ec-bf7f-75de7a90ee6a",
              is_exclusive: false,
              kind: "link",
              name: "<auth[is cfg::Config]",
              real_cardinality: "Many",
              stub: "auth",
              target_id: "7291cb6a-8a10-11ec-97d6-f100f3be2691"
            },
            %{
              id: "730e59f9-8a10-11ec-b136-298d9ed81ffe",
              is_exclusive: false,
              kind: "link",
              name: "<auth[is cfg::InstanceConfig]",
              real_cardinality: "Many",
              stub: "auth",
              target_id: "7309eaa6-8a10-11ec-9f02-93e426acb102"
            },
            %{
              id: "733c7a50-8a10-11ec-8408-918f05b41bf8",
              is_exclusive: false,
              kind: "link",
              name: "<auth[is cfg::DatabaseConfig]",
              real_cardinality: "Many",
              stub: "auth",
              target_id: "733761d3-8a10-11ec-afc7-b715ca405de5"
            }
          ],
          bases: [%{id: "722254b3-8a10-11ec-8402-0bfe9e5855c7"}],
          enum_values: [],
          id: "72514fda-8a10-11ec-af60-f910ee609a28",
          intersection_of: [],
          is_abstract: false,
          kind: "object",
          material_id: [],
          name: "cfg::Auth",
          pointers: [
            %{
              has_default: false,
              id: "72537dbb-8a10-11ec-9410-3f6e9e2f09c0",
              is_exclusive: true,
              is_writable: false,
              kind: "property",
              name: "priority",
              pointers: [],
              real_cardinality: "One",
              target_id: "00000000-0000-0000-0000-000000000105"
            },
            %{
              has_default: true,
              id: "72545ae7-8a10-11ec-bb0f-dbac5cc51067",
              is_exclusive: false,
              is_writable: false,
              kind: "property",
              name: "user",
              pointers: [],
              real_cardinality: "Many",
              target_id: "00000000-0000-0000-0000-000000000101"
            },
            %{
              has_default: false,
              id: "7254ab03-8a10-11ec-bd14-f578bfa3f5af",
              is_exclusive: true,
              is_writable: true,
              kind: "link",
              name: "method",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "722e05a0-8a10-11ec-b24d-0774edeaa026"
            },
            %{
              has_default: false,
              id: "7255b955-8a10-11ec-b33f-3d2f61be8de0",
              is_exclusive: false,
              is_writable: false,
              kind: "property",
              name: "comment",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000101"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "adc1d30d-5cc1-0de1-cb14-3b2fc9eaae6e" => %{
          array_element_id: "c147374c-91d9-11ec-8299-e1261ccaa9bc",
          backlink_stubs: [],
          backlinks: [],
          bases: [],
          enum_values: [],
          id: "adc1d30d-5cc1-0de1-cb14-3b2fc9eaae6e",
          intersection_of: [],
          is_abstract: false,
          kind: "array",
          material_id: [],
          name: "array<default::Genre>",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "6e946f77-8a10-11ec-948c-2fb05007b715" => %{
          array_element_id: [],
          backlink_stubs: [
            %{
              id: "625fd0f0-91d9-11ec-a293-4b2dc324d335",
              is_exclusive: false,
              kind: "link",
              name: "<indexes",
              real_cardinality: "Many",
              target_id: "6c0851d6-8a10-11ec-87e9-c3313f204cf8"
            }
          ],
          backlinks: [
            %{
              id: "6eaeb3cc-8a10-11ec-aab9-8d0761f8be5c",
              is_exclusive: false,
              kind: "link",
              name: "<indexes[is schema::Source]",
              real_cardinality: "AtMostOne",
              stub: "indexes",
              target_id: "6eab94c9-8a10-11ec-9d43-ad67d08c6d68"
            },
            %{
              id: "6fbe09a0-8a10-11ec-9b0f-25e8bbeadad0",
              is_exclusive: false,
              kind: "link",
              name: "<indexes[is schema::Link]",
              real_cardinality: "AtMostOne",
              stub: "indexes",
              target_id: "6fb26983-8a10-11ec-bb96-c5decb666559"
            },
            %{
              id: "6f6e4220-8a10-11ec-9eec-abc2cd506017",
              is_exclusive: false,
              kind: "link",
              name: "<indexes[is schema::ObjectType]",
              real_cardinality: "AtMostOne",
              stub: "indexes",
              target_id: "6f60f97a-8a10-11ec-89c8-bfc584a2e355"
            }
          ],
          bases: [%{id: "6d849f36-8a10-11ec-9fd0-0d13e4601f2c"}],
          enum_values: [],
          id: "6e946f77-8a10-11ec-948c-2fb05007b715",
          intersection_of: [],
          is_abstract: false,
          kind: "object",
          material_id: [],
          name: "schema::Index",
          pointers: [
            %{
              has_default: false,
              id: "6e98eb67-8a10-11ec-b8e4-13d3e00ad7c8",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "expr",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000101"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "663c804e-8a10-11ec-a3c5-438941da3b32" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "00000000-0000-0000-0000-000000000105"}],
          enum_values: [],
          id: "663c804e-8a10-11ec-a3c5-438941da3b32",
          intersection_of: [],
          is_abstract: true,
          kind: "scalar",
          material_id: "00000000-0000-0000-0000-000000000105",
          name: "std::sequence",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "5d31584b-3a5f-533d-3d64-fab0fdab61b3" => %{
          array_element_id: "00000000-0000-0000-0000-000000000001",
          backlink_stubs: [],
          backlinks: [],
          bases: [],
          enum_values: [],
          id: "5d31584b-3a5f-533d-3d64-fab0fdab61b3",
          intersection_of: [],
          is_abstract: true,
          kind: "array",
          material_id: [],
          name: "array<anytype>",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "717e334f-8a10-11ec-8756-65a22eb6394f" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [
            %{id: "71623468-8a10-11ec-b28a-7bada3f5ad0b"},
            %{id: "6d849f36-8a10-11ec-9fd0-0d13e4601f2c"}
          ],
          enum_values: [],
          id: "717e334f-8a10-11ec-8756-65a22eb6394f",
          intersection_of: [],
          is_abstract: false,
          kind: "object",
          material_id: [],
          name: "sys::Database",
          pointers: [
            %{
              has_default: false,
              id: "717f9287-8a10-11ec-9806-7f29a1ecce53",
              is_exclusive: true,
              is_writable: true,
              kind: "property",
              name: "name",
              pointers: [],
              real_cardinality: "One",
              target_id: "00000000-0000-0000-0000-000000000101"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "72393e53-8a10-11ec-8ec7-470c3b22d04f" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "722e05a0-8a10-11ec-b24d-0774edeaa026"}],
          enum_values: [],
          id: "72393e53-8a10-11ec-8ec7-470c3b22d04f",
          intersection_of: [],
          is_abstract: false,
          kind: "object",
          material_id: [],
          name: "cfg::Trust",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "7268fc76-8a10-11ec-8ce8-45c375a2833a" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "722254b3-8a10-11ec-8402-0bfe9e5855c7"}],
          enum_values: [],
          id: "7268fc76-8a10-11ec-8ce8-45c375a2833a",
          intersection_of: [],
          is_abstract: true,
          kind: "object",
          material_id: [],
          name: "cfg::AbstractConfig",
          pointers: [
            %{
              has_default: true,
              id: "726b0661-8a10-11ec-a1aa-9123c8376d4f",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "session_idle_timeout",
              pointers: [],
              real_cardinality: "One",
              target_id: "00000000-0000-0000-0000-00000000010e"
            },
            %{
              has_default: true,
              id: "726bc301-8a10-11ec-bc7a-43b0843a73f2",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "session_idle_transaction_timeout",
              pointers: [],
              real_cardinality: "One",
              target_id: "00000000-0000-0000-0000-00000000010e"
            },
            %{
              has_default: false,
              id: "726c3f81-8a10-11ec-9365-f147dc725fda",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "query_execution_timeout",
              pointers: [],
              real_cardinality: "One",
              target_id: "00000000-0000-0000-0000-00000000010e"
            },
            %{
              has_default: true,
              id: "726c8f54-8a10-11ec-b479-1964b3fc3f06",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "listen_port",
              pointers: [],
              real_cardinality: "One",
              target_id: "00000000-0000-0000-0000-000000000103"
            },
            %{
              has_default: false,
              id: "726ceff0-8a10-11ec-af4c-61d5b8692ec3",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "listen_addresses",
              pointers: [],
              real_cardinality: "Many",
              target_id: "00000000-0000-0000-0000-000000000101"
            },
            %{
              has_default: false,
              id: "726d2bf9-8a10-11ec-acfe-1178a8bf4afb",
              is_exclusive: false,
              is_writable: true,
              kind: "link",
              name: "auth",
              pointers: [],
              real_cardinality: "Many",
              target_id: "72514fda-8a10-11ec-af60-f910ee609a28"
            },
            %{
              has_default: true,
              id: "726dcc92-8a10-11ec-8eca-275c6acc99e3",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "allow_dml_in_functions",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000109"
            },
            %{
              has_default: true,
              id: "726e64af-8a10-11ec-a6fe-5f6f8b1605a7",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "allow_bare_ddl",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "72506084-8a10-11ec-be6c-41dfc4790203"
            },
            %{
              has_default: false,
              id: "726ece61-8a10-11ec-bf82-67b932dfeff4",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "shared_buffers",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000130"
            },
            %{
              has_default: false,
              id: "726f4219-8a10-11ec-929e-115de26cdc2b",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "query_work_mem",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000130"
            },
            %{
              has_default: false,
              id: "726f94e5-8a10-11ec-aee6-7b8436d7f985",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "effective_cache_size",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000130"
            },
            %{
              has_default: false,
              id: "726fe29f-8a10-11ec-989f-19bccc46c089",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "effective_io_concurrency",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000105"
            },
            %{
              has_default: false,
              id: "72702bf9-8a10-11ec-a8cd-bdead8539ad1",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "default_statistics_target",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000105"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "6638bd21-8a10-11ec-92fa-a1f2c208052b" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "6635a1ee-8a10-11ec-8b19-afdb38091631"}],
          enum_values: [],
          id: "6638bd21-8a10-11ec-92fa-a1f2c208052b",
          intersection_of: [],
          is_abstract: true,
          kind: "scalar",
          material_id: [],
          name: "std::anyfloat",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "00000000-0000-0000-0000-00000000010d" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "6630e5b7-8a10-11ec-856b-650e11726a69"}],
          enum_values: [],
          id: "00000000-0000-0000-0000-00000000010d",
          intersection_of: [],
          is_abstract: false,
          kind: "scalar",
          material_id: [],
          name: "cal::local_time",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "10386947-4d9a-9752-f24f-0d79556fe2f7" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [],
          enum_values: [],
          id: "10386947-4d9a-9752-f24f-0d79556fe2f7",
          intersection_of: [],
          is_abstract: false,
          kind: "tuple",
          material_id: [],
          name: "tuple<x:std::str, y:std::int64>",
          pointers: [],
          tuple_elements: [
            %{
              id: "c3e44cb6-91d9-11ec-9005-a76fa1ee3e08",
              name: "x",
              target_id: "00000000-0000-0000-0000-000000000101"
            },
            %{
              id: "c3e45a76-91d9-11ec-9005-f35b520051af",
              name: "y",
              target_id: "00000000-0000-0000-0000-000000000105"
            }
          ],
          union_of: []
        },
        "6dd14eb7-8a10-11ec-b180-493af67bf9e1" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "6d849f36-8a10-11ec-9fd0-0d13e4601f2c"}],
          enum_values: [],
          id: "6dd14eb7-8a10-11ec-b180-493af67bf9e1",
          intersection_of: [],
          is_abstract: true,
          kind: "object",
          material_id: [],
          name: "schema::CallableObject",
          pointers: [
            %{
              has_default: false,
              id: "6dd5e5ee-8a10-11ec-bcea-0993f37ab691",
              is_exclusive: false,
              is_writable: true,
              kind: "link",
              name: "params",
              pointers: [
                %{
                  id: "6dd652f5-8a10-11ec-9ea1-2f0e4656339a",
                  is_writable: true,
                  kind: "property",
                  name: "@index",
                  real_cardinality: "AtMostOne",
                  target_id: "00000000-0000-0000-0000-000000000105"
                }
              ],
              real_cardinality: "Many",
              target_id: "6dbacd17-8a10-11ec-afcb-17fc7726838f"
            },
            %{
              has_default: false,
              id: "6dd6800f-8a10-11ec-a774-bf1c50550b21",
              is_exclusive: false,
              is_writable: true,
              kind: "link",
              name: "return_type",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "6c91fdfe-8a10-11ec-bacd-f11d47fae198"
            },
            %{
              has_default: false,
              id: "6dd6e827-8a10-11ec-9868-7f53b7204dd5",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "return_typemod",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "6c79c94b-8a10-11ec-b4bd-5f942eec71f4"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "66364d12-8a10-11ec-b0bd-dba594fec9b3" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "6635a1ee-8a10-11ec-8b19-afdb38091631"}],
          enum_values: [],
          id: "66364d12-8a10-11ec-b0bd-dba594fec9b3",
          intersection_of: [],
          is_abstract: true,
          kind: "scalar",
          material_id: [],
          name: "std::anyint",
          pointers: [],
          tuple_elements: [],
          union_of: []
        },
        "6dbacd17-8a10-11ec-afcb-17fc7726838f" => %{
          array_element_id: [],
          backlink_stubs: [
            %{
              id: "625fd0f0-91d9-11ec-a293-4b2dc324d335",
              is_exclusive: false,
              kind: "link",
              name: "<params",
              real_cardinality: "Many",
              target_id: "6c0851d6-8a10-11ec-87e9-c3313f204cf8"
            }
          ],
          backlinks: [
            %{
              id: "6dd5e5ee-8a10-11ec-bcea-0993f37ab691",
              is_exclusive: false,
              kind: "link",
              name: "<params[is schema::CallableObject]",
              real_cardinality: "Many",
              stub: "params",
              target_id: "6dd14eb7-8a10-11ec-b180-493af67bf9e1"
            },
            %{
              id: "706fad81-8a10-11ec-9721-630aca7bcd7a",
              is_exclusive: false,
              kind: "link",
              name: "<params[is schema::Function]",
              real_cardinality: "Many",
              stub: "params",
              target_id: "706af6a3-8a10-11ec-a8db-99fefbf8cf3d"
            },
            %{
              id: "7095a5bf-8a10-11ec-b287-fd8c0917c36e",
              is_exclusive: false,
              kind: "link",
              name: "<params[is schema::Operator]",
              real_cardinality: "Many",
              stub: "params",
              target_id: "70913227-8a10-11ec-ab7a-3fb0e1f3f58d"
            },
            %{
              id: "6e06dde3-8a10-11ec-a2a5-0dc11cbf5b41",
              is_exclusive: false,
              kind: "link",
              name: "<params[is schema::Constraint]",
              real_cardinality: "Many",
              stub: "params",
              target_id: "6e01f436-8a10-11ec-9117-0f2b60a3b4d5"
            }
          ],
          bases: [%{id: "6c7a7341-8a10-11ec-a7ad-3f5a92d98a26"}],
          enum_values: [],
          id: "6dbacd17-8a10-11ec-afcb-17fc7726838f",
          intersection_of: [],
          is_abstract: false,
          kind: "object",
          material_id: [],
          name: "schema::Parameter",
          pointers: [
            %{
              has_default: false,
              id: "6dbde57d-8a10-11ec-a10c-115a6e2e6fb5",
              is_exclusive: false,
              is_writable: true,
              kind: "link",
              name: "type",
              pointers: [],
              real_cardinality: "One",
              target_id: "6c91fdfe-8a10-11ec-bacd-f11d47fae198"
            },
            %{
              has_default: false,
              id: "6dbe4e98-8a10-11ec-9445-3b9cdeb7515c",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "typemod",
              pointers: [],
              real_cardinality: "One",
              target_id: "6c79c94b-8a10-11ec-b4bd-5f942eec71f4"
            },
            %{
              has_default: false,
              id: "6dbe78f5-8a10-11ec-b6c0-9b333ea2174f",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "kind",
              pointers: [],
              real_cardinality: "One",
              target_id: "6c790fba-8a10-11ec-9202-93da54716b5c"
            },
            %{
              has_default: false,
              id: "6dbe9968-8a10-11ec-a85a-a9d076da68b2",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "num",
              pointers: [],
              real_cardinality: "One",
              target_id: "00000000-0000-0000-0000-000000000105"
            },
            %{
              has_default: false,
              id: "6dbeb928-8a10-11ec-b15a-e5d8993c2c64",
              is_exclusive: false,
              is_writable: true,
              kind: "property",
              name: "default",
              pointers: [],
              real_cardinality: "AtMostOne",
              target_id: "00000000-0000-0000-0000-000000000101"
            }
          ],
          tuple_elements: [],
          union_of: []
        },
        "6c13df00-8a10-11ec-b188-c9dff3b2685a" => %{
          array_element_id: [],
          backlink_stubs: [],
          backlinks: [],
          bases: [%{id: "6c0851d6-8a10-11ec-87e9-c3313f204cf8"}],
          enum_values: [],
          id: "6c13df00-8a10-11ec-b188-c9dff3b2685a",
          intersection_of: [],
          is_abstract: false,
          kind: "object",
          material_id: [],
          name: "std::FreeObject",
          pointers: [],
          tuple_elements: [],
          union_of: []
        }
      }
      def(types) do
        @types
      end
    )
  ]
end