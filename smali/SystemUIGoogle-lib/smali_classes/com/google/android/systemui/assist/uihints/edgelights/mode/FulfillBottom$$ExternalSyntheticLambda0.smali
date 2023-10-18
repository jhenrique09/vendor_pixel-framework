.class public final synthetic Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$$ExternalSyntheticLambda0;->$r8$classId:I

    const/high16 v1, 0x3f800000    # 1.0f

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mEdgeLightsView:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    sub-float/2addr v1, p1

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mSwingLeft:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sub-float p1, v1, p1

    :goto_1
    const v0, 0x3f30a3d7    # 0.69f

    const v1, 0x3d0f5c29    # 0.035f

    invoke-static {v0, v1, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    const v1, 0x3f5eb852    # 0.87f

    const v2, 0x3e051eb8    # 0.13f

    invoke-static {v1, v2, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    const v2, 0x3f770a3d    # 0.965f

    const v3, 0x3e9eb852    # 0.31f

    invoke-static {v2, v3, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->setRelativePoints(FFF)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
