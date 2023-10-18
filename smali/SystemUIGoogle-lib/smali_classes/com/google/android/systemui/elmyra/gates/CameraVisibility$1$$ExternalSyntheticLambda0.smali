.class public final synthetic Lcom/google/android/systemui/elmyra/gates/CameraVisibility$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/systemui/elmyra/gates/CameraVisibility;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/elmyra/gates/CameraVisibility;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility$1$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/elmyra/gates/CameraVisibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility$1$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility$1$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/elmyra/gates/CameraVisibility;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->isCameraShowing()Z

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mCameraShowing:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mCameraShowing:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->notifyListener()V

    :cond_0
    return-void

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility$1$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/elmyra/gates/CameraVisibility;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->isCameraShowing()Z

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mCameraShowing:Z

    if-eq v1, v0, :cond_1

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mCameraShowing:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->notifyListener()V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
