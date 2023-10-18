.class public final Lcom/google/android/systemui/dreamliner/DockIndicationController$1;
.super Lcom/google/android/systemui/dreamliner/DockIndicationController$PhotoAnimationListener;
.source ""


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/google/android/systemui/dreamliner/DockIndicationController;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/dreamliner/DockIndicationController;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController$1;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController$1;->this$0:Lcom/google/android/systemui/dreamliner/DockIndicationController;

    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/DockIndicationController$PhotoAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget p1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController$1;->this$0:Lcom/google/android/systemui/dreamliner/DockIndicationController;

    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDockPromo:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mHidePromoRunnable:Lcom/google/android/systemui/dreamliner/DockIndicationController$$ExternalSyntheticLambda0;

    sget-wide v1, Lcom/google/android/systemui/dreamliner/DockIndicationController;->PROMO_SHOWING_TIME_MILLIS:J

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Math;->toIntExact(J)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result p0

    int-to-long v1, p0

    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :goto_1
    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController$1;->this$0:Lcom/google/android/systemui/dreamliner/DockIndicationController;

    iget v0, p1, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mShowPromoTimes:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/systemui/dreamliner/DockIndicationController;->showPromoInner()V

    goto :goto_2

    :cond_1
    iget-object p1, p1, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController$1;->this$0:Lcom/google/android/systemui/dreamliner/DockIndicationController;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDockPromo:Landroid/widget/FrameLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
