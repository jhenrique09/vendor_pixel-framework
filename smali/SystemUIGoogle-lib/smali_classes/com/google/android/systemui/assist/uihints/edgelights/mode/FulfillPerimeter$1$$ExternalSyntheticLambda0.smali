.class public final synthetic Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$1;

.field public final synthetic f$1:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$1;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$1$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$1;

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$1$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$1$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$1;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$1$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    iget-object v0, v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$1;->this$0:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;

    iget-object v0, v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mNextMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->commitModeTransition(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V

    return-void
.end method
