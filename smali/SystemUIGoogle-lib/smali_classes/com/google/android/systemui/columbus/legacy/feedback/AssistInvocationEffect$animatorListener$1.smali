.class public final Lcom/google/android/systemui/columbus/legacy/feedback/AssistInvocationEffect$animatorListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/feedback/AssistInvocationEffect;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/feedback/AssistInvocationEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/feedback/AssistInvocationEffect$animatorListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/feedback/AssistInvocationEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/feedback/AssistInvocationEffect$animatorListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/feedback/AssistInvocationEffect;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/systemui/columbus/legacy/feedback/AssistInvocationEffect;->progress:F

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/feedback/AssistInvocationEffect$animatorListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/feedback/AssistInvocationEffect;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/systemui/columbus/legacy/feedback/AssistInvocationEffect;->progress:F

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
