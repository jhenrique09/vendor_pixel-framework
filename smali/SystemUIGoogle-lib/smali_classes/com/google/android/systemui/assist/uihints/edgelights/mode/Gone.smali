.class public final Lcom/google/android/systemui/assist/uihints/edgelights/mode/Gone;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;


# virtual methods
.method public final getSubType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final logState()V
    .locals 1

    new-instance p0, Landroid/metrics/LogMaker;

    const/16 v0, 0x6b4

    invoke-direct {p0, v0}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public final onNewModeRequest(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->setVisibility(I)V

    invoke-virtual {p1, p2}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->commitModeTransition(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V

    return-void
.end method

.method public final start(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;Lcom/android/systemui/assist/ui/PerimeterPathGuide;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {p1, p0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->setAssistLights([Lcom/android/systemui/assist/ui/EdgeLight;)V

    return-void
.end method
