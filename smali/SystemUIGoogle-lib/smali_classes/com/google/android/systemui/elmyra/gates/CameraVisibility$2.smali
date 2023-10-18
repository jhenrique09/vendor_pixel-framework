.class public final Lcom/google/android/systemui/elmyra/gates/CameraVisibility$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/elmyra/gates/Gate$Listener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/elmyra/gates/CameraVisibility;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/elmyra/gates/CameraVisibility;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility$2;->this$0:Lcom/google/android/systemui/elmyra/gates/CameraVisibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGateChanged(Lcom/google/android/systemui/elmyra/gates/Gate;)V
    .locals 2

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility$2;->this$0:Lcom/google/android/systemui/elmyra/gates/CameraVisibility;

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mUpdateExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility$1$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/elmyra/gates/CameraVisibility$1$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/elmyra/gates/CameraVisibility;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
