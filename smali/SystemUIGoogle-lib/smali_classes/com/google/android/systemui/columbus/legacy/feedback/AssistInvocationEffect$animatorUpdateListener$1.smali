.class public final Lcom/google/android/systemui/columbus/legacy/feedback/AssistInvocationEffect$animatorUpdateListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/feedback/AssistInvocationEffect;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/feedback/AssistInvocationEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/feedback/AssistInvocationEffect$animatorUpdateListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/feedback/AssistInvocationEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/feedback/AssistInvocationEffect$animatorUpdateListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/feedback/AssistInvocationEffect;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/columbus/legacy/feedback/AssistInvocationEffect;->progress:F

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/feedback/AssistInvocationEffect;->assistManager:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/android/systemui/assist/AssistManagerGoogle;->onInvocationProgress(IF)V

    :cond_0
    return-void
.end method
