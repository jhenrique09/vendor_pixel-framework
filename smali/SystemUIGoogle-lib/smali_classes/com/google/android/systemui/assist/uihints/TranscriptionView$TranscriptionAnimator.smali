.class public final Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public mDistance:F

.field public final mSpans:Ljava/util/List;

.field public mStartX:F

.field public final synthetic this$0:Lcom/google/android/systemui/assist/uihints/TranscriptionView;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/assist/uihints/TranscriptionView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->this$0:Lcom/google/android/systemui/assist/uihints/TranscriptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->mSpans:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->mStartX:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->mDistance:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->this$0:Lcom/google/android/systemui/assist/uihints/TranscriptionView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setX(F)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->this$0:Lcom/google/android/systemui/assist/uihints/TranscriptionView;

    sget-object v1, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->INTERPOLATOR_SCROLL:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->updateColor()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->mSpans:Ljava/util/List;

    new-instance v1, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator$$ExternalSyntheticLambda0;-><init>(Landroid/animation/ValueAnimator;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->this$0:Lcom/google/android/systemui/assist/uihints/TranscriptionView;

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method
