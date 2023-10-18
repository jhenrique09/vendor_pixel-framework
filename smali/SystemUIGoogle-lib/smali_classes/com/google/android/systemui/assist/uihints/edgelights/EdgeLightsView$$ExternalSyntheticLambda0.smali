.class public final synthetic Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    check-cast p1, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsListener;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    invoke-interface {p1, p0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsListener;->onModeStarted(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    check-cast p1, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsListener;

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mAssistLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-interface {p1, v0, p0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsListener;->onAssistLightsUpdated(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;[Lcom/android/systemui/assist/ui/EdgeLight;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
