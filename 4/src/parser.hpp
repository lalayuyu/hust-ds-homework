#ifndef _HUST___PARSER_HPP
#define _HUST___PARSER_HPP 1

#include <reflected_impl.hpp>
#include <list>
#include <string>
#include <iomanip>

#include <rlib/stdio.hpp>
#include <rlib/terminal.hpp>

using namespace rlib::terminal;

class parser
{
private:
    static void help_msg()
    {
        std::string msg = R"_STR_(
rfaketerm 0.2 HUST_xxxx special edition

>>> Usage: <Command> [args ...]

>>> Command List:

CommandName [Arguments ...] -> ReturnValue # Instructions

# Commands useful to operate
help -> null # Show this message
exit -> null # exit politely
Select [int i] -> null # Select which graph to use (Select 0 by default, index starts from zero)
List -> null # List how many graph is working currently
QuickTraverse # Print all nodes information to stdout in current graph

# Commands required by Question Book
CreateGraph [string typeStr] -> null # typeStr must be one of: 'directed_weighted_graph' 'undirected_weighted_graph' 'directed_unweighted_graph' 'undirected_unweighted_graph'
DestroyGraph -> null
LocateVex [data_t val] -> Language
GetVex [Language lang] -> Language
PutVex [Language lang] -> null # omit `address` to append a new node, otherwise to edit a existing node.
FirstAdjVex [Language lang] -> Language
NextAdjVex [Language lang1, Language lang2] -> Language
InsertVex [Language lang] -> null
DeleteVex [Language lang] -> null
InsertArc [Language lang] -> null
DeleteArc [Language lang] -> null
DFSTraverse -> null
BFSTraverse -> null

>>> What's Language? How should I use it?

Language includes NodeLanguage and EdgeLanguage.

NodeLanguage is a string language, with which you can describe a node in a graph.
It's a string with format: [value]`[address]

EdgeLanguage is a string language, with which you can describe an edge connected with two valid nodes.
It's a string with format: [weight]`<nodeAddressFrom>`[nodeAddressTo]

In addition, NodeAddress is guaranteed to be valid during the lifetime of the process, unless erased.
Usually, you needn't fill all areas in a "Language". For example:

rfaketerm ~ CreateGraph directed_unweighted_graph
rfaketerm ~ PutVex 200`
rfaketerm ~ LocateVex 100
100`FFFF04AE
rfaketerm ~ GetVex `FFFF04AE
100`FFFF04AE
rfaketerm ~ PutVex 200`FFFF04AE
rfaketerm ~ PutVex 2333`
rfaketerm ~ PutVex 666`
rfaketerm ~ QuickTraverse
200`FFFF04AE 2333`FFFF04BE 666`FFFF010A
rfaketerm ~ InsertVex `FFFF04AE`FFFF010A
rfaketerm ~
rfaketerm ~
rfaketerm ~
rfaketerm ~
rfaketerm ~
rfaketerm ~

In order to simplify node address, you can set an "alias to address" while performing "PutVex".
Any given address will be checked if it've been registered as an alias, so they're converted before

)_STR_";
        rlib::println(msg);
    }

public:
    static void parse(const std::vector<std::string> &to_parse)
    {
        if (to_parse.empty())
            return;
        rlib::print(std::boolalpha);

#define AREA_BEGIN if(to_parse.begin()->empty()) {}
#define IFCMD(str) else if(*to_parse.begin() == str)
#define AREA_END else

#define WANT_ARG(n) if(to_parse.size() != n+1) {throw std::runtime_error(rlib::format_string("{} arguments wanted but {} provided.", n, to_parse.size()-1));}
#define STRING_ARG(n) to_parse[n]
#define SIZE_ARG(n) std::stoul(to_parse[n])
#define INT_ARG(n) std::stoi(to_parse[n])
#define HAVE_RETURN_VALUE auto ret =
#define PRINT_RETURN_VALUE rlib::println(ret);

        AREA_BEGIN
//__ccgen_managed_begin__

//Code generated by ccgen.py below. Do not edit them by hand.
//__ccgen_debug__: `ret name(args)` is `null Select(size_t i)`
        IFCMD("Select")
        {
            WANT_ARG(1)
            impl.Select(SIZE_ARG(1));
        }
//__ccgen_debug__: `ret name(args)` is `null List()`
        IFCMD("List")
        {
            WANT_ARG(0)
            impl.List();
        }
//__ccgen_debug__: `ret name(args)` is `null QuickTraverse()`
        IFCMD("QuickTraverse")
        {
            WANT_ARG(0)
            impl.QuickTraverse();
        }
//__ccgen_debug__: `ret name(args)` is `null CreateGraph(Language typeStr)`
        IFCMD("CreateGraph")
        {
            WANT_ARG(1)
            impl.CreateGraph(STRING_ARG(1));
        }
//__ccgen_debug__: `ret name(args)` is `null DestroyGraph()`
        IFCMD("DestroyGraph")
        {
            WANT_ARG(0)
            impl.DestroyGraph();
        }
//__ccgen_debug__: `ret name(args)` is `Language LocateVex(data_t val)`
        IFCMD("LocateVex")
        {
            WANT_ARG(1)
            HAVE_RETURN_VALUE
            impl.LocateVex(INT_ARG(1));
            PRINT_RETURN_VALUE
        }
//__ccgen_debug__: `ret name(args)` is `Language GetVex(Language lang)`
        IFCMD("GetVex")
        {
            WANT_ARG(1)
            HAVE_RETURN_VALUE
            impl.GetVex(STRING_ARG(1));
            PRINT_RETURN_VALUE
        }
//__ccgen_debug__: `ret name(args)` is `null PutVex(Language lang)`
        IFCMD("PutVex")
        {
            WANT_ARG(1)
            impl.PutVex(STRING_ARG(1));
        }
//__ccgen_debug__: `ret name(args)` is `Language FirstAdjVex(Language lang)`
        IFCMD("FirstAdjVex")
        {
            WANT_ARG(1)
            HAVE_RETURN_VALUE
            impl.FirstAdjVex(STRING_ARG(1));
            PRINT_RETURN_VALUE
        }
//__ccgen_debug__: `ret name(args)` is `Language NextAdjVex(Language lang1, Language lang2)`
        IFCMD("NextAdjVex")
        {
            WANT_ARG(2)
            HAVE_RETURN_VALUE
            impl.NextAdjVex(STRING_ARG(1), STRING_ARG(2));
            PRINT_RETURN_VALUE
        }
//__ccgen_debug__: `ret name(args)` is `null InsertVex(Language lang)`
        IFCMD("InsertVex")
        {
            WANT_ARG(1)
            impl.InsertVex(STRING_ARG(1));
        }
//__ccgen_debug__: `ret name(args)` is `null DeleteVex(Language lang)`
        IFCMD("DeleteVex")
        {
            WANT_ARG(1)
            impl.DeleteVex(STRING_ARG(1));
        }
//__ccgen_debug__: `ret name(args)` is `null InsertArc(Language lang)`
        IFCMD("InsertArc")
        {
            WANT_ARG(1)
            impl.InsertArc(STRING_ARG(1));
        }
//__ccgen_debug__: `ret name(args)` is `null DeleteArc(Language lang)`
        IFCMD("DeleteArc")
        {
            WANT_ARG(1)
            impl.DeleteArc(STRING_ARG(1));
        }
//__ccgen_debug__: `ret name(args)` is `null DFSTraverse()`
        IFCMD("DFSTraverse")
        {
            WANT_ARG(0)
            impl.DFSTraverse();
        }
//__ccgen_debug__: `ret name(args)` is `null BFSTraverse()`
        IFCMD("BFSTraverse")
        {
            WANT_ARG(0)
            impl.BFSTraverse();
        } IFCMD("exit")
        {
            rlib::println("bye~");
            ::std::exit(0);
        } IFCMD("help")
        {
            help_msg();
        }
//impl.debug();
//Code generated by ccgen.py ahead. Do not edit them by hand.

//__ccgen_managed_end__
        AREA_END
        {
            throw std::invalid_argument("Invalid argument. Try to type `help` to get helped.");
        }


    }
};

#endif //_HUST___PARSER_HPP
