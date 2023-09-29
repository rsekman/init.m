(* ::Package:: *)

(** User Mathematica initialization file **)



On[Assert];


Needs["MaTeX`"];
SetOptions[MaTeX,
    FontSize -> 20,
    "Preamble" -> {"\\usepackage{siunitx}"}
 ];


Begin["Ekman`"];
StyleOptions = {
    FontSize->24,
    FontFamily ->"Latin Modern Roman",
    FontColor->Black
};
PlotOptions = {
    ImageSize->Full,
    BaseStyle->StyleOptions,
    LabelStyle->StyleOptions,
    TicksStyle->StyleOptions,
    PlotRangePadding->None,
    PlotStyle->Thick
};
SetOptions[
    {
        Plot, LogPlot, LogLinearPlot, LogLogPlot,
        ListPlot, ListLogPlot, ListLogLinearPlot, ListLogLogPlot,
        DateListPlot, StackedListPlot, StackedDateListPlot
    },
PlotOptions
];
SetOptions[
    {PointLegend, LineLegend, BarLegend, SwatchLegend},
    LabelStyle->StyleOptions
];
End[];
