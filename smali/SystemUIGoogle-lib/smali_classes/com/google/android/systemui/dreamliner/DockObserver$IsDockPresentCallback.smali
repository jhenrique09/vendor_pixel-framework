.class final Lcom/google/android/systemui/dreamliner/DockObserver$IsDockPresentCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/dreamliner/WirelessCharger$IsDockPresentCallback;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final synthetic this$0:Lcom/google/android/systemui/dreamliner/DockObserver;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$IsDockPresentCallback;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/DockObserver$IsDockPresentCallback;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onCallback(ZBBZI)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IDP() response: d="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", i="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", o="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sgi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "DLObserver"

    invoke-static {v0, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/systemui/dreamliner/DockObserver$IsDockPresentCallback$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2, p3, p5}, Lcom/google/android/systemui/dreamliner/DockObserver$IsDockPresentCallback$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver$IsDockPresentCallback;BBI)V

    invoke-static {p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
