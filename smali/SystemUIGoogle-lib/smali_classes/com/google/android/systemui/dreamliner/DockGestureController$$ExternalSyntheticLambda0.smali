.class public final synthetic Lcom/google/android/systemui/dreamliner/DockGestureController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/systemui/dreamliner/DockGestureController;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/dreamliner/DockGestureController;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/systemui/dreamliner/DockGestureController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockGestureController$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/dreamliner/DockGestureController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController$$ExternalSyntheticLambda0;->$r8$classId:I

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    const/4 v2, 0x4

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/dreamliner/DockGestureController;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mSettingsGear:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/dreamliner/DockGestureController;

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mPreviewTargetAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    iget-object v2, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mPhotoPreview:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getRight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mVelocityX:F

    iget-object v4, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mTargetSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    new-instance v1, Lcom/google/android/systemui/dreamliner/DockGestureController$$ExternalSyntheticLambda0;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lcom/google/android/systemui/dreamliner/DockGestureController$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/dreamliner/DockGestureController;I)V

    filled-new-array {v1}, [Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/dreamliner/DockGestureController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.systemui.dreamliner.PHOTO_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/dreamliner/DockGestureController;->sendProtectedBroadcast(Landroid/content/Intent;)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/dreamliner/DockGestureController;

    invoke-virtual {p0}, Lcom/google/android/systemui/dreamliner/DockGestureController;->hideGear()V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/dreamliner/DockGestureController;

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mPreviewTargetAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    iget v2, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mVelocityX:F

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mTargetSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {v0, v1, v3, v2, p0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    invoke-virtual {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/dreamliner/DockGestureController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/dreamliner/DockGestureController;->hidePhotoPreview(Z)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/dreamliner/DockGestureController;

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mPhotoPreview:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mPhotoPreview:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

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
