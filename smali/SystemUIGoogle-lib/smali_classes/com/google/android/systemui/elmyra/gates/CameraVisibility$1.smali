.class public final Lcom/google/android/systemui/elmyra/gates/CameraVisibility$1;
.super Landroid/app/TaskStackListener;
.source ""


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/elmyra/gates/CameraVisibility;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/elmyra/gates/CameraVisibility;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility$1;->this$0:Lcom/google/android/systemui/elmyra/gates/CameraVisibility;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTaskStackChanged()V
    .locals 3

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility$1;->this$0:Lcom/google/android/systemui/elmyra/gates/CameraVisibility;

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mUpdateExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/systemui/elmyra/gates/CameraVisibility$1$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/systemui/elmyra/gates/CameraVisibility$1$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/elmyra/gates/CameraVisibility;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
