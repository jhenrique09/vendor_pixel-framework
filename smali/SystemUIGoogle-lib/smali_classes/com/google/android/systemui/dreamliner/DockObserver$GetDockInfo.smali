.class public final Lcom/google/android/systemui/dreamliner/DockObserver$GetDockInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final context:Ljava/lang/Object;

.field public final resultReceiver:Landroid/os/ResultReceiver;

.field public final synthetic this$0:Lcom/google/android/systemui/dreamliner/DockObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/os/ResultReceiver;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetDockInfo;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetDockInfo;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetDockInfo;->resultReceiver:Landroid/os/ResultReceiver;

    iput-object p3, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetDockInfo;->context:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetDockInfo;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetDockInfo;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mWirelessCharger:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetDockInfo;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mWirelessCharger:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/dreamliner/WirelessCharger;

    new-instance v1, Lcom/google/android/systemui/dreamliner/DockObserver$GetInformationCallback;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetDockInfo;->resultReceiver:Landroid/os/ResultReceiver;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/dreamliner/DockObserver$GetInformationCallback;-><init>(Landroid/os/ResultReceiver;)V

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/dreamliner/WirelessCharger;->getInformation(Lcom/google/android/systemui/dreamliner/WirelessCharger$GetInformationCallback;)V

    :cond_0
    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetDockInfo;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mWirelessCharger:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetDockInfo;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mWirelessCharger:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/dreamliner/WirelessCharger;

    iget-object v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetDockInfo;->context:Ljava/lang/Object;

    check-cast v1, [B

    new-instance v2, Lcom/google/android/systemui/dreamliner/DockObserver$KeyExchangeCallback;

    iget-object v3, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetDockInfo;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetDockInfo;->resultReceiver:Landroid/os/ResultReceiver;

    invoke-direct {v2, v3, p0}, Lcom/google/android/systemui/dreamliner/DockObserver$KeyExchangeCallback;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/os/ResultReceiver;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/systemui/dreamliner/WirelessCharger;->keyExchange([BLcom/google/android/systemui/dreamliner/WirelessCharger$KeyExchangeCallback;)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
