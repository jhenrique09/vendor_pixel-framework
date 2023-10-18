.class public final Lcom/google/android/systemui/dreamliner/DockObserver$ProtectedBroadcastSender;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ProtectedBroadcastSender;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ProtectedBroadcastSender;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->isSystem()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/systemui/dreamliner/DockObserver$ProtectedBroadcastSender$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/systemui/dreamliner/DockObserver$ProtectedBroadcastSender$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver$ProtectedBroadcastSender;Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method
