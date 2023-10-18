.class public final synthetic Lcom/google/android/systemui/dreamliner/DockIndicationController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/systemui/dreamliner/DockIndicationController;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/dreamliner/DockIndicationController;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/dreamliner/DockIndicationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/dreamliner/DockIndicationController;

    iget-boolean v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDozing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDocking:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDockPromo:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mHidePromoAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/dreamliner/DockIndicationController;

    iget-boolean v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDocking:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDozing:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAccessibilityLiveRegion(I)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
