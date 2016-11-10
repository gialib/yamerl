-module('ex_7.22_invalid_implicit_keys').

-include_lib("eunit/include/eunit.hrl").

-define(FILENAME, "test/parsing/" ?MODULE_STRING ".yaml").

single_test_() ->
    ?_assertMatch(
      {yamerl_parser,
        {file,?FILENAME},
        [],
        <<>>,
        2090,
        true,
        [],
        0,
        2091,
        5,
        1,
        false,
        4,
        1038,
        utf8,
        false,
        undefined,
        _,
        _,
        [],
        {bcoll,root,0,-1,1,1,-1,1,1},
        false,
        false,
        false,
        [{impl_key,false,undefined,undefined,undefined,undefined,undefined}],
        false,
        false,
        _,
        [],
        0,
        28,
        27,
        undefined,
        undefined,
        _,
        false,
        [
          {yamerl_parsing_error,warning,
            "An implicit key must not take more than 1024 characters",
            4,2,invalid_implicit_key,
            undefined,[]},
          {yamerl_parsing_error,warning,
            "An implicit key must not span several lines",
            1,3,invalid_implicit_key,
            undefined,[]}
        ],
        [
          {yamerl_stream_end,4,1038},
          {yamerl_doc_end,4,1038},
          {yamerl_collection_end,4,1037,flow,sequence},
          {yamerl_collection_end,4,1037,flow,mapping},
          {yamerl_scalar,4,1029,
            {yamerl_tag,4,1029,{non_specific,"?"}},
            flow,plain,"invalid"},
          {yamerl_mapping_value,4,1027},
          {yamerl_scalar,4,2,
            {yamerl_tag,4,2,{non_specific,"!"}},
            flow,double_quoted,
            "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"},
          {yamerl_mapping_key,4,2},
          {yamerl_collection_start,4,2,
            {yamerl_tag,4,2,{non_specific,"?"}},
            flow,mapping},
          {yamerl_sequence_entry,4,2},
          {yamerl_collection_end,3,1030,flow,mapping},
          {yamerl_scalar,3,1028,
            {yamerl_tag,3,1028,{non_specific,"?"}},
            flow,plain,"ok"},
          {yamerl_mapping_value,3,1026},
          {yamerl_scalar,3,2,
            {yamerl_tag,3,2,{non_specific,"!"}},
            flow,double_quoted,
            ".............................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................."},
          {yamerl_mapping_key,3,2},
          {yamerl_collection_start,3,2,
            {yamerl_tag,3,2,{non_specific,"?"}},
            flow,mapping},
          {yamerl_sequence_entry,3,2},
          {yamerl_collection_end,2,14,flow,mapping},
          {yamerl_scalar,2,7,
            {yamerl_tag,2,7,{non_specific,"?"}},
            flow,plain,"invalid"},
          {yamerl_mapping_value,2,5},
          {yamerl_scalar,1,3,
            {yamerl_tag,1,3,{non_specific,"?"}},
            flow,plain,"foo bar"},
          {yamerl_mapping_key,1,3},
          {yamerl_collection_start,1,3,
            {yamerl_tag,1,3,{non_specific,"?"}},
            flow,mapping},
          {yamerl_sequence_entry,1,3},
          {yamerl_collection_start,1,1,
            {yamerl_tag,1,1,{non_specific,"?"}},
            flow,sequence},
          {yamerl_doc_start,1,1,{1,2},_},
          {yamerl_stream_start,1,1,utf8}
        ]
      },
      yamerl_parser:file(?FILENAME)
    ).
