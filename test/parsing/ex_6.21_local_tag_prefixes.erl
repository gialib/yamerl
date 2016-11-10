-module('ex_6.21_local_tag_prefixes').

-include_lib("eunit/include/eunit.hrl").

-define(FILENAME, "test/parsing/" ?MODULE_STRING ".yaml").

single_test_() ->
    ?_assertMatch(
      {yamerl_parser,
        {file,?FILENAME},
        [],
        <<>>,
        101,
        true,
        [],
        0,
        102,
        8,
        1,
        false,
        7,
        15,
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
        13,
        10,
        undefined,
        undefined,
        _,
        false,
        [],
        [
          {yamerl_stream_end,7,15},
          {yamerl_doc_end,7,15},
          {yamerl_scalar,7,10,
            {yamerl_tag,7,1,"!my-light"},
            flow,plain,"green"},
          {yamerl_doc_start,6,1,{1,2},_},
          {yamerl_tag_directive,5,1,"!m!","!my-"},
          {yamerl_doc_end,4,1},
          {yamerl_scalar,3,10,
            {yamerl_tag,3,1,"!my-light"},
            flow,plain,"fluorescent"},
          {yamerl_doc_start,2,1,{1,2},_},
          {yamerl_tag_directive,1,1,"!m!","!my-"},
          {yamerl_stream_start,1,1,utf8}
        ]
      },
      yamerl_parser:file(?FILENAME)
    ).
