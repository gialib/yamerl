-module('ex_6.26_tag_shorthands').

-include_lib("eunit/include/eunit.hrl").

-define(FILENAME, "test/parsing/" ?MODULE_STRING ".yaml").

single_test_() ->
    ?_assertMatch(
      {yamerl_parser,
        {file,?FILENAME},
        [],
        <<>>,
        80,
        true,
        [],
        0,
        81,
        6,
        1,
        false,
        5,
        16,
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
        17,
        13,
        undefined,
        undefined,
        _,
        false,
        [],
        [
          {yamerl_stream_end,5,16},
          {yamerl_doc_end,5,16},
          {yamerl_collection_end,5,16,block,sequence},
          {yamerl_scalar,5,13,
            {yamerl_tag,5,3,"tag:example.com,2000:app/tag%21"},
            flow,plain,"baz"},
          {yamerl_sequence_entry,5,1},
          {yamerl_scalar,4,9,
            {yamerl_tag,4,3,"tag:yaml.org,2002:str"},
            flow,plain,"bar"},
          {yamerl_sequence_entry,4,1},
          {yamerl_scalar,3,10,
            {yamerl_tag,3,3,"!local"},
            flow,plain,"foo"},
          {yamerl_sequence_entry,3,1},
          {yamerl_collection_start,3,1,
            {yamerl_tag,3,1,{non_specific,"?"}},
            block,sequence},
          {yamerl_doc_start,2,1,{1,2},_},
          {yamerl_tag_directive,1,1,"!e!","tag:example.com,2000:app/"},
          {yamerl_stream_start,1,1,utf8}
        ]
      },
      yamerl_parser:file(?FILENAME)
    ).
