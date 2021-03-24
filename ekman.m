(* ::Package:: *)

SetDirectory[NotebookDirectory[]];
On[Assert];
SetOptions[{
		Plot, LogPlot, LogLogPlot, LogLinearPlot,
		ListPlot, ListLogPlot, ListLogLogPlot, ListLogLinearPlot,
		ParametricPlot
	}
	, ImageSize->Large
	, PlotStyle->Thick
	, BaseStyle->{
		FontSize->20
		, FontFamily ->"Latin Modern Roman"
	}
	,GridLinesStyle->Directive[Thick, Gray, Dashed]
];
SetOptions[{
	BarChart
	}
	, ImageSize->Large
	, BaseStyle->{
		FontSize->20
	, FontFamily ->"Latin Modern Roman"
	}
];
SetOptions[$FrontEndSession
	, PrintingStyleEnvironment -> "Working"
];


Needs["MaTeX`"];
SetOptions[MaTeX, FontSize -> 20, "Preamble" -> {"\\usepackage{siunitx}"}];


Context["Ekman`"];
	axisFlip=#/.{x_Line|x_GraphicsComplex:>MapAt[#~Reverse~2&,x,1],x:(PlotRange->_):>x~Reverse~2}&;
	getColors[start_,ncolors_] := ColorData[97, "ColorList"][[start;;start+ncolors-1]];
	uniformSamples[f_, n_,{min_,max_}] := Array[{#,f[#] } &, n, {min, max}];
	linSpace[n_, {min_, max_}] := uniformSamples[Identity, n, {min, max}]
	logUniformSamples[f_, n_,{logmin_,logmax_}] := Array[{10^#,f[10^#] } &, n, {logmin, logmax}];
	exportReturn = ( Export[#2,#1]; #1 )&;
End[];
