.class public final synthetic Lcom/google/android/systemui/assist/uihints/GlowController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/assist/uihints/GlowController;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/assist/uihints/GlowController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/uihints/GlowController;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowController$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/uihints/GlowController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowsY:I

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getMinTranslationY()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mEdgeLightsMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    instance-of v1, v1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mEdgeLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowView:Lcom/google/android/systemui/assist/uihints/GlowView;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/systemui/assist/uihints/GlowView;->setGlowsY(II[Lcom/android/systemui/assist/ui/EdgeLight;)V

    return-void
.end method
