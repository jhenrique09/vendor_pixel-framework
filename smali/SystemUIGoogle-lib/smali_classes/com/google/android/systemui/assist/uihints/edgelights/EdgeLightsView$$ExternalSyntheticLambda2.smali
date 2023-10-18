.class public final synthetic Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

.field public final synthetic f$1:[Lcom/android/systemui/assist/ui/EdgeLight;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;[Lcom/android/systemui/assist/ui/EdgeLight;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$$ExternalSyntheticLambda2;->f$1:[Lcom/android/systemui/assist/ui/EdgeLight;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$$ExternalSyntheticLambda2;->f$1:[Lcom/android/systemui/assist/ui/EdgeLight;

    sget v1, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/assist/ui/EdgeLight;->copy([Lcom/android/systemui/assist/ui/EdgeLight;)[Lcom/android/systemui/assist/ui/EdgeLight;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mAssistLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    iget-object p0, v0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mListeners:Ljava/util/Set;

    new-instance v1, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;I)V

    invoke-interface {p0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
