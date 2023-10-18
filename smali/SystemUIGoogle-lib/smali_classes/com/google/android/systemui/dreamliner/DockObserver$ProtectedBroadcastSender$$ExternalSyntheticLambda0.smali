.class public final synthetic Lcom/google/android/systemui/dreamliner/DockObserver$ProtectedBroadcastSender$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/dreamliner/DockObserver$ProtectedBroadcastSender;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/dreamliner/DockObserver$ProtectedBroadcastSender;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ProtectedBroadcastSender$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/dreamliner/DockObserver$ProtectedBroadcastSender;

    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ProtectedBroadcastSender$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ProtectedBroadcastSender$$ExternalSyntheticLambda0;->f$2:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ProtectedBroadcastSender$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/dreamliner/DockObserver$ProtectedBroadcastSender;

    iget-object v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ProtectedBroadcastSender$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ProtectedBroadcastSender$$ExternalSyntheticLambda0;->f$2:Landroid/os/UserHandle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver$ProtectedBroadcastSender;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Send protected broadcast failed. intent= "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DLObserver"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
