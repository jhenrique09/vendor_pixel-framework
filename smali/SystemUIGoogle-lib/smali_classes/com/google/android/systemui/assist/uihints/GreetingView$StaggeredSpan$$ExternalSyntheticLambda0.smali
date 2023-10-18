.class public final synthetic Lcom/google/android/systemui/assist/uihints/GreetingView$StaggeredSpan$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/systemui/assist/uihints/GreetingView$StaggeredSpan;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/assist/uihints/GreetingView$StaggeredSpan;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/systemui/assist/uihints/GreetingView$StaggeredSpan$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/GreetingView$StaggeredSpan$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/uihints/GreetingView$StaggeredSpan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget v0, p0, Lcom/google/android/systemui/assist/uihints/GreetingView$StaggeredSpan$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GreetingView$StaggeredSpan$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/uihints/GreetingView$StaggeredSpan;

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GreetingView$StaggeredSpan;->this$0:Lcom/google/android/systemui/assist/uihints/GreetingView;

    iget v0, v0, Lcom/google/android/systemui/assist/uihints/GreetingView;->START_DELTA:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/google/android/systemui/assist/uihints/GreetingView$StaggeredSpan;->mShift:I

    return-void

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GreetingView$StaggeredSpan$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/uihints/GreetingView$StaggeredSpan;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GreetingView$StaggeredSpan;->this$0:Lcom/google/android/systemui/assist/uihints/GreetingView;

    iget v0, v0, Lcom/google/android/systemui/assist/uihints/GreetingView;->mMaxAlpha:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/google/android/systemui/assist/uihints/GreetingView$StaggeredSpan;->mAlpha:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
