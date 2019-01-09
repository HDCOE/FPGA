set lang "C++"
set moduleName "Lenet"
set moduleIsExternC "0"
set rawDecl ""
set globalVariable ""
set PortList ""
set PortName0 "data_in"
set BitWidth0 "64"
set ArrayOpt0 ""
set Const0 "0"
set Volatile0 "0"
set Pointer0 "1"
set Reference0 "0"
set Dims0 [list 0]
set Interface0 "wire"
set structMem0 ""
set PortName00 "data"
set BitWidth00 "128"
set ArrayOpt00 ""
set Const00 "0"
set Volatile00 "0"
set Pointer00 "0"
set Reference00 "0"
set Dims00 [list  8]
set Interface00 "wire"
set DataType00 "[list ap_fixed 16 8 5 3 0 ]"
set Port00 [list $PortName00 $Interface00 $DataType00 $Pointer00 $Dims00 $Const00 $Volatile00 $ArrayOpt00]
lappend structMem0 $Port00
set PortName01 "size"
set BitWidth01 "96"
set ArrayOpt01 ""
set Const01 "0"
set Volatile01 "0"
set Pointer01 "0"
set Reference01 "0"
set Dims01 [list 0]
set Interface01 "wire"
set structMem01 ""
set PortName010 "x"
set BitWidth010 "32"
set ArrayOpt010 ""
set Const010 "0"
set Volatile010 "0"
set Pointer010 "0"
set Reference010 "0"
set Dims010 [list 0]
set Interface010 "wire"
set DataType010 "int"
set Port010 [list $PortName010 $Interface010 $DataType010 $Pointer010 $Dims010 $Const010 $Volatile010 $ArrayOpt010]
lappend structMem01 $Port010
set PortName011 "y"
set BitWidth011 "32"
set ArrayOpt011 ""
set Const011 "0"
set Volatile011 "0"
set Pointer011 "0"
set Reference011 "0"
set Dims011 [list 0]
set Interface011 "wire"
set DataType011 "int"
set Port011 [list $PortName011 $Interface011 $DataType011 $Pointer011 $Dims011 $Const011 $Volatile011 $ArrayOpt011]
lappend structMem01 $Port011
set PortName012 "z"
set BitWidth012 "32"
set ArrayOpt012 ""
set Const012 "0"
set Volatile012 "0"
set Pointer012 "0"
set Reference012 "0"
set Dims012 [list 0]
set Interface012 "wire"
set DataType012 "int"
set Port012 [list $PortName012 $Interface012 $DataType012 $Pointer012 $Dims012 $Const012 $Volatile012 $ArrayOpt012]
lappend structMem01 $Port012
set structParameter01 [list ]
set structArgument01 [list ]
set NameSpace01 [list ]
set structIsPacked01 "0"
set DataType01 [list "point_t" "struct point_t" $structMem01 1 0 $structParameter01 $structArgument01 $NameSpace01 $structIsPacked01]
set Port01 [list $PortName01 $Interface01 $DataType01 $Pointer01 $Dims01 $Const01 $Volatile01 $ArrayOpt01]
lappend structMem0 $Port01
set DataType0tp0 "int"
set DataType0tp1 "int"
set DataType0tp2 "int"
set structParameter0 [list [list $DataType0tp0 x] [list $DataType0tp1 y] [list $DataType0tp2 z] ]
set structArgument0 [list 2 2 2 ]
set NameSpace0 [list ]
set structIsPacked0 "0"
set DataType0 [list "tensor_t<2, 2, 2>" "struct tensor_t" $structMem0 1 0 $structParameter0 $structArgument0 $NameSpace0 $structIsPacked0]
set Port0 [list $PortName0 $Interface0 $DataType0 $Pointer0 $Dims0 $Const0 $Volatile0 $ArrayOpt0]
lappend PortList $Port0
set PortName1 "conv"
set BitWidth1 "64"
set ArrayOpt1 ""
set Const1 "0"
set Volatile1 "0"
set Pointer1 "1"
set Reference1 "0"
set Dims1 [list 0]
set Interface1 "wire"
set structMem1 ""
set PortName10 "data"
set BitWidth10 "128"
set ArrayOpt10 ""
set Const10 "0"
set Volatile10 "0"
set Pointer10 "0"
set Reference10 "0"
set Dims10 [list  8]
set Interface10 "wire"
set DataType10 "[list ap_fixed 16 8 5 3 0 ]"
set Port10 [list $PortName10 $Interface10 $DataType10 $Pointer10 $Dims10 $Const10 $Volatile10 $ArrayOpt10]
lappend structMem1 $Port10
set PortName11 "size"
set BitWidth11 "96"
set ArrayOpt11 ""
set Const11 "0"
set Volatile11 "0"
set Pointer11 "0"
set Reference11 "0"
set Dims11 [list 0]
set Interface11 "wire"
set structMem11 ""
set PortName110 "x"
set BitWidth110 "32"
set ArrayOpt110 ""
set Const110 "0"
set Volatile110 "0"
set Pointer110 "0"
set Reference110 "0"
set Dims110 [list 0]
set Interface110 "wire"
set DataType110 "int"
set Port110 [list $PortName110 $Interface110 $DataType110 $Pointer110 $Dims110 $Const110 $Volatile110 $ArrayOpt110]
lappend structMem11 $Port110
set PortName111 "y"
set BitWidth111 "32"
set ArrayOpt111 ""
set Const111 "0"
set Volatile111 "0"
set Pointer111 "0"
set Reference111 "0"
set Dims111 [list 0]
set Interface111 "wire"
set DataType111 "int"
set Port111 [list $PortName111 $Interface111 $DataType111 $Pointer111 $Dims111 $Const111 $Volatile111 $ArrayOpt111]
lappend structMem11 $Port111
set PortName112 "z"
set BitWidth112 "32"
set ArrayOpt112 ""
set Const112 "0"
set Volatile112 "0"
set Pointer112 "0"
set Reference112 "0"
set Dims112 [list 0]
set Interface112 "wire"
set DataType112 "int"
set Port112 [list $PortName112 $Interface112 $DataType112 $Pointer112 $Dims112 $Const112 $Volatile112 $ArrayOpt112]
lappend structMem11 $Port112
set structParameter11 [list ]
set structArgument11 [list ]
set NameSpace11 [list ]
set structIsPacked11 "0"
set DataType11 [list "point_t" "struct point_t" $structMem11 1 0 $structParameter11 $structArgument11 $NameSpace11 $structIsPacked11]
set Port11 [list $PortName11 $Interface11 $DataType11 $Pointer11 $Dims11 $Const11 $Volatile11 $ArrayOpt11]
lappend structMem1 $Port11
set DataType1tp0 "int"
set DataType1tp1 "int"
set DataType1tp2 "int"
set structParameter1 [list [list $DataType1tp0 x] [list $DataType1tp1 y] [list $DataType1tp2 z] ]
set structArgument1 [list 2 2 2 ]
set NameSpace1 [list ]
set structIsPacked1 "0"
set DataType1 [list "tensor_t<2, 2, 2>" "struct tensor_t" $structMem1 1 0 $structParameter1 $structArgument1 $NameSpace1 $structIsPacked1]
set Port1 [list $PortName1 $Interface1 $DataType1 $Pointer1 $Dims1 $Const1 $Volatile1 $ArrayOpt1]
lappend PortList $Port1
set PortName2 "relu"
set BitWidth2 "64"
set ArrayOpt2 ""
set Const2 "0"
set Volatile2 "0"
set Pointer2 "1"
set Reference2 "0"
set Dims2 [list 0]
set Interface2 "wire"
set structMem2 ""
set PortName20 "data"
set BitWidth20 "128"
set ArrayOpt20 ""
set Const20 "0"
set Volatile20 "0"
set Pointer20 "0"
set Reference20 "0"
set Dims20 [list  8]
set Interface20 "wire"
set DataType20 "[list ap_fixed 16 8 5 3 0 ]"
set Port20 [list $PortName20 $Interface20 $DataType20 $Pointer20 $Dims20 $Const20 $Volatile20 $ArrayOpt20]
lappend structMem2 $Port20
set PortName21 "size"
set BitWidth21 "96"
set ArrayOpt21 ""
set Const21 "0"
set Volatile21 "0"
set Pointer21 "0"
set Reference21 "0"
set Dims21 [list 0]
set Interface21 "wire"
set structMem21 ""
set PortName210 "x"
set BitWidth210 "32"
set ArrayOpt210 ""
set Const210 "0"
set Volatile210 "0"
set Pointer210 "0"
set Reference210 "0"
set Dims210 [list 0]
set Interface210 "wire"
set DataType210 "int"
set Port210 [list $PortName210 $Interface210 $DataType210 $Pointer210 $Dims210 $Const210 $Volatile210 $ArrayOpt210]
lappend structMem21 $Port210
set PortName211 "y"
set BitWidth211 "32"
set ArrayOpt211 ""
set Const211 "0"
set Volatile211 "0"
set Pointer211 "0"
set Reference211 "0"
set Dims211 [list 0]
set Interface211 "wire"
set DataType211 "int"
set Port211 [list $PortName211 $Interface211 $DataType211 $Pointer211 $Dims211 $Const211 $Volatile211 $ArrayOpt211]
lappend structMem21 $Port211
set PortName212 "z"
set BitWidth212 "32"
set ArrayOpt212 ""
set Const212 "0"
set Volatile212 "0"
set Pointer212 "0"
set Reference212 "0"
set Dims212 [list 0]
set Interface212 "wire"
set DataType212 "int"
set Port212 [list $PortName212 $Interface212 $DataType212 $Pointer212 $Dims212 $Const212 $Volatile212 $ArrayOpt212]
lappend structMem21 $Port212
set structParameter21 [list ]
set structArgument21 [list ]
set NameSpace21 [list ]
set structIsPacked21 "0"
set DataType21 [list "point_t" "struct point_t" $structMem21 1 0 $structParameter21 $structArgument21 $NameSpace21 $structIsPacked21]
set Port21 [list $PortName21 $Interface21 $DataType21 $Pointer21 $Dims21 $Const21 $Volatile21 $ArrayOpt21]
lappend structMem2 $Port21
set DataType2tp0 "int"
set DataType2tp1 "int"
set DataType2tp2 "int"
set structParameter2 [list [list $DataType2tp0 x] [list $DataType2tp1 y] [list $DataType2tp2 z] ]
set structArgument2 [list 2 2 2 ]
set NameSpace2 [list ]
set structIsPacked2 "0"
set DataType2 [list "tensor_t<2, 2, 2>" "struct tensor_t" $structMem2 1 0 $structParameter2 $structArgument2 $NameSpace2 $structIsPacked2]
set Port2 [list $PortName2 $Interface2 $DataType2 $Pointer2 $Dims2 $Const2 $Volatile2 $ArrayOpt2]
lappend PortList $Port2
set PortName3 "pool"
set BitWidth3 "64"
set ArrayOpt3 ""
set Const3 "0"
set Volatile3 "0"
set Pointer3 "1"
set Reference3 "0"
set Dims3 [list 0]
set Interface3 "wire"
set structMem3 ""
set PortName30 "data"
set BitWidth30 "128"
set ArrayOpt30 ""
set Const30 "0"
set Volatile30 "0"
set Pointer30 "0"
set Reference30 "0"
set Dims30 [list  8]
set Interface30 "wire"
set DataType30 "[list ap_fixed 16 8 5 3 0 ]"
set Port30 [list $PortName30 $Interface30 $DataType30 $Pointer30 $Dims30 $Const30 $Volatile30 $ArrayOpt30]
lappend structMem3 $Port30
set PortName31 "size"
set BitWidth31 "96"
set ArrayOpt31 ""
set Const31 "0"
set Volatile31 "0"
set Pointer31 "0"
set Reference31 "0"
set Dims31 [list 0]
set Interface31 "wire"
set structMem31 ""
set PortName310 "x"
set BitWidth310 "32"
set ArrayOpt310 ""
set Const310 "0"
set Volatile310 "0"
set Pointer310 "0"
set Reference310 "0"
set Dims310 [list 0]
set Interface310 "wire"
set DataType310 "int"
set Port310 [list $PortName310 $Interface310 $DataType310 $Pointer310 $Dims310 $Const310 $Volatile310 $ArrayOpt310]
lappend structMem31 $Port310
set PortName311 "y"
set BitWidth311 "32"
set ArrayOpt311 ""
set Const311 "0"
set Volatile311 "0"
set Pointer311 "0"
set Reference311 "0"
set Dims311 [list 0]
set Interface311 "wire"
set DataType311 "int"
set Port311 [list $PortName311 $Interface311 $DataType311 $Pointer311 $Dims311 $Const311 $Volatile311 $ArrayOpt311]
lappend structMem31 $Port311
set PortName312 "z"
set BitWidth312 "32"
set ArrayOpt312 ""
set Const312 "0"
set Volatile312 "0"
set Pointer312 "0"
set Reference312 "0"
set Dims312 [list 0]
set Interface312 "wire"
set DataType312 "int"
set Port312 [list $PortName312 $Interface312 $DataType312 $Pointer312 $Dims312 $Const312 $Volatile312 $ArrayOpt312]
lappend structMem31 $Port312
set structParameter31 [list ]
set structArgument31 [list ]
set NameSpace31 [list ]
set structIsPacked31 "0"
set DataType31 [list "point_t" "struct point_t" $structMem31 1 0 $structParameter31 $structArgument31 $NameSpace31 $structIsPacked31]
set Port31 [list $PortName31 $Interface31 $DataType31 $Pointer31 $Dims31 $Const31 $Volatile31 $ArrayOpt31]
lappend structMem3 $Port31
set DataType3tp0 "int"
set DataType3tp1 "int"
set DataType3tp2 "int"
set structParameter3 [list [list $DataType3tp0 x] [list $DataType3tp1 y] [list $DataType3tp2 z] ]
set structArgument3 [list 2 2 2 ]
set NameSpace3 [list ]
set structIsPacked3 "0"
set DataType3 [list "tensor_t<2, 2, 2>" "struct tensor_t" $structMem3 1 0 $structParameter3 $structArgument3 $NameSpace3 $structIsPacked3]
set Port3 [list $PortName3 $Interface3 $DataType3 $Pointer3 $Dims3 $Const3 $Volatile3 $ArrayOpt3]
lappend PortList $Port3
set PortName4 "fc"
set BitWidth4 "64"
set ArrayOpt4 ""
set Const4 "0"
set Volatile4 "0"
set Pointer4 "1"
set Reference4 "0"
set Dims4 [list 0]
set Interface4 "wire"
set structMem4 ""
set PortName40 "data"
set BitWidth40 "128"
set ArrayOpt40 ""
set Const40 "0"
set Volatile40 "0"
set Pointer40 "0"
set Reference40 "0"
set Dims40 [list  8]
set Interface40 "wire"
set DataType40 "[list ap_fixed 16 8 5 3 0 ]"
set Port40 [list $PortName40 $Interface40 $DataType40 $Pointer40 $Dims40 $Const40 $Volatile40 $ArrayOpt40]
lappend structMem4 $Port40
set PortName41 "size"
set BitWidth41 "96"
set ArrayOpt41 ""
set Const41 "0"
set Volatile41 "0"
set Pointer41 "0"
set Reference41 "0"
set Dims41 [list 0]
set Interface41 "wire"
set structMem41 ""
set PortName410 "x"
set BitWidth410 "32"
set ArrayOpt410 ""
set Const410 "0"
set Volatile410 "0"
set Pointer410 "0"
set Reference410 "0"
set Dims410 [list 0]
set Interface410 "wire"
set DataType410 "int"
set Port410 [list $PortName410 $Interface410 $DataType410 $Pointer410 $Dims410 $Const410 $Volatile410 $ArrayOpt410]
lappend structMem41 $Port410
set PortName411 "y"
set BitWidth411 "32"
set ArrayOpt411 ""
set Const411 "0"
set Volatile411 "0"
set Pointer411 "0"
set Reference411 "0"
set Dims411 [list 0]
set Interface411 "wire"
set DataType411 "int"
set Port411 [list $PortName411 $Interface411 $DataType411 $Pointer411 $Dims411 $Const411 $Volatile411 $ArrayOpt411]
lappend structMem41 $Port411
set PortName412 "z"
set BitWidth412 "32"
set ArrayOpt412 ""
set Const412 "0"
set Volatile412 "0"
set Pointer412 "0"
set Reference412 "0"
set Dims412 [list 0]
set Interface412 "wire"
set DataType412 "int"
set Port412 [list $PortName412 $Interface412 $DataType412 $Pointer412 $Dims412 $Const412 $Volatile412 $ArrayOpt412]
lappend structMem41 $Port412
set structParameter41 [list ]
set structArgument41 [list ]
set NameSpace41 [list ]
set structIsPacked41 "0"
set DataType41 [list "point_t" "struct point_t" $structMem41 1 0 $structParameter41 $structArgument41 $NameSpace41 $structIsPacked41]
set Port41 [list $PortName41 $Interface41 $DataType41 $Pointer41 $Dims41 $Const41 $Volatile41 $ArrayOpt41]
lappend structMem4 $Port41
set DataType4tp0 "int"
set DataType4tp1 "int"
set DataType4tp2 "int"
set structParameter4 [list [list $DataType4tp0 x] [list $DataType4tp1 y] [list $DataType4tp2 z] ]
set structArgument4 [list 2 2 2 ]
set NameSpace4 [list ]
set structIsPacked4 "0"
set DataType4 [list "tensor_t<2, 2, 2>" "struct tensor_t" $structMem4 1 0 $structParameter4 $structArgument4 $NameSpace4 $structIsPacked4]
set Port4 [list $PortName4 $Interface4 $DataType4 $Pointer4 $Dims4 $Const4 $Volatile4 $ArrayOpt4]
lappend PortList $Port4
set PortName5 "data_out"
set BitWidth5 "64"
set ArrayOpt5 ""
set Const5 "0"
set Volatile5 "0"
set Pointer5 "1"
set Reference5 "0"
set Dims5 [list 0]
set Interface5 "wire"
set structMem5 ""
set PortName50 "data"
set BitWidth50 "432"
set ArrayOpt50 ""
set Const50 "0"
set Volatile50 "0"
set Pointer50 "0"
set Reference50 "0"
set Dims50 [list  27]
set Interface50 "wire"
set DataType50 "[list ap_fixed 16 8 5 3 0 ]"
set Port50 [list $PortName50 $Interface50 $DataType50 $Pointer50 $Dims50 $Const50 $Volatile50 $ArrayOpt50]
lappend structMem5 $Port50
set PortName51 "size"
set BitWidth51 "96"
set ArrayOpt51 ""
set Const51 "0"
set Volatile51 "0"
set Pointer51 "0"
set Reference51 "0"
set Dims51 [list 0]
set Interface51 "wire"
set structMem51 ""
set PortName510 "x"
set BitWidth510 "32"
set ArrayOpt510 ""
set Const510 "0"
set Volatile510 "0"
set Pointer510 "0"
set Reference510 "0"
set Dims510 [list 0]
set Interface510 "wire"
set DataType510 "int"
set Port510 [list $PortName510 $Interface510 $DataType510 $Pointer510 $Dims510 $Const510 $Volatile510 $ArrayOpt510]
lappend structMem51 $Port510
set PortName511 "y"
set BitWidth511 "32"
set ArrayOpt511 ""
set Const511 "0"
set Volatile511 "0"
set Pointer511 "0"
set Reference511 "0"
set Dims511 [list 0]
set Interface511 "wire"
set DataType511 "int"
set Port511 [list $PortName511 $Interface511 $DataType511 $Pointer511 $Dims511 $Const511 $Volatile511 $ArrayOpt511]
lappend structMem51 $Port511
set PortName512 "z"
set BitWidth512 "32"
set ArrayOpt512 ""
set Const512 "0"
set Volatile512 "0"
set Pointer512 "0"
set Reference512 "0"
set Dims512 [list 0]
set Interface512 "wire"
set DataType512 "int"
set Port512 [list $PortName512 $Interface512 $DataType512 $Pointer512 $Dims512 $Const512 $Volatile512 $ArrayOpt512]
lappend structMem51 $Port512
set structParameter51 [list ]
set structArgument51 [list ]
set NameSpace51 [list ]
set structIsPacked51 "0"
set DataType51 [list "point_t" "struct point_t" $structMem51 1 0 $structParameter51 $structArgument51 $NameSpace51 $structIsPacked51]
set Port51 [list $PortName51 $Interface51 $DataType51 $Pointer51 $Dims51 $Const51 $Volatile51 $ArrayOpt51]
lappend structMem5 $Port51
set DataType5tp0 "int"
set DataType5tp1 "int"
set DataType5tp2 "int"
set structParameter5 [list [list $DataType5tp0 x] [list $DataType5tp1 y] [list $DataType5tp2 z] ]
set structArgument5 [list 3 3 3 ]
set NameSpace5 [list ]
set structIsPacked5 "0"
set DataType5 [list "tensor_t<3, 3, 3>" "struct tensor_t" $structMem5 1 0 $structParameter5 $structArgument5 $NameSpace5 $structIsPacked5]
set Port5 [list $PortName5 $Interface5 $DataType5 $Pointer5 $Dims5 $Const5 $Volatile5 $ArrayOpt5]
lappend PortList $Port5
set globalAPint "" 
set returnAPInt "" 
set hasCPPAPInt 0 
set argAPInt "" 
set hasCPPAPFix 1 
set hasSCFix 0 
set hasCBool 0 
set hasCPPComplex 0 
set isTemplateTop 0
set hasHalf 0 
set dataPackList ""
set module [list $moduleName $PortList $rawDecl $argAPInt $returnAPInt $dataPackList]
