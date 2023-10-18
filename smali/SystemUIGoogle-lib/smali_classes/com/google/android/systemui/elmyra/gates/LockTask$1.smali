.class public final Lcom/google/android/systemui/elmyra/gates/LockTask$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/shared/system/TaskStackChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/elmyra/gates/LockTask;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/elmyra/gates/LockTask;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/LockTask$1;->this$0:Lcom/google/android/systemui/elmyra/gates/LockTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLockTaskModeChanged(I)V
    .locals 2

    const-string v0, "Mode: "

    const-string v1, "Elmyra/LockTask"

    invoke-static {v0, p1, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/LockTask$1;->this$0:Lcom/google/android/systemui/elmyra/gates/LockTask;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/systemui/elmyra/gates/LockTask;->mIsBlocked:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/systemui/elmyra/gates/LockTask;->mIsBlocked:Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->notifyListener()V

    return-void
.end method
