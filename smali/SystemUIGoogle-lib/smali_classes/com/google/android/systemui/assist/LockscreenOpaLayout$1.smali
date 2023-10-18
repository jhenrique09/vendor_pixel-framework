.class public final Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;->$r8$classId:I

    iput-object p2, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;->$r8$classId:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;

    invoke-static {p0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->-$$Nest$mstartCollapseAnimation(Lcom/google/android/systemui/assist/LockscreenOpaLayout;)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/systemui/assist/LockscreenOpaLayout;

    invoke-static {p1}, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->-$$Nest$mgetLineAnimatorSet(Lcom/google/android/systemui/assist/LockscreenOpaLayout;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/systemui/assist/LockscreenOpaLayout;

    iget-object p1, p1, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/systemui/assist/LockscreenOpaLayout;

    iget-object p1, p1, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;

    iget-object p0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;

    sget p1, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->startRetractAnimation()V

    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/systemui/assist/LockscreenOpaLayout;

    iget-object p1, p1, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    iget-object p0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;

    iput-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    iput v1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureState:I

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->skipToStartingValue()V

    return-void

    :pswitch_4
    iget-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/systemui/assist/LockscreenOpaLayout;

    iget-object p1, p1, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    iget-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/systemui/assist/LockscreenOpaLayout;

    invoke-virtual {p1}, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->skipToStartingValue()V

    iget-object p0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;

    iput v1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureState:I

    iput-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    return-void

    :pswitch_5
    iget-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/systemui/assist/LockscreenOpaLayout;

    const/4 v0, 0x1

    iput v0, p1, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureState:I

    invoke-static {p1}, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->-$$Nest$mgetLineAnimatorSet(Lcom/google/android/systemui/assist/LockscreenOpaLayout;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object p0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;

    iget-object p0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/animation/AnimatorSet;->setCurrentPlayTime(J)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;

    iget-object p0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;

    invoke-static {p0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->-$$Nest$mstartCollapseAnimation(Lcom/google/android/systemui/assist/LockscreenOpaLayout;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
