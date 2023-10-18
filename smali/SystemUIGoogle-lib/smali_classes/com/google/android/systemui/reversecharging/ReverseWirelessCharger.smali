.class public final Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;
.super Lvendor/google/wireless_charger/IWirelessChargerRtxStatusCallback$Stub;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mCallbackIdentifier:Ljava/lang/String;

.field public final mIsDockPresentCallbacks:Ljava/util/ArrayList;

.field public final mLock:Ljava/lang/Object;

.field public final mRtxInformationCallbacks:Ljava/util/ArrayList;

.field public final mRtxStatusCallbacks:Ljava/util/ArrayList;

.field public mWirelessCharger:Lvendor/google/wireless_charger/IWirelessCharger;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "ReverseWirelessCharger"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lvendor/google/wireless_charger/IWirelessChargerRtxStatusCallback$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mIsDockPresentCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mRtxInformationCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mRtxStatusCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "default_callback"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s_%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mCallbackIdentifier:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    const-string v0, "ReverseWirelessCharger"

    const-string v1, "serviceDied"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mWirelessCharger:Lvendor/google/wireless_charger/IWirelessCharger;

    return-void
.end method

.method public final initHALInterface()V
    .locals 6

    const-string v0, "ReverseWirelessCharger"

    const-string v1, "Register RtxCallback as "

    iget-object v2, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mWirelessCharger:Lvendor/google/wireless_charger/IWirelessCharger;

    if-nez v2, :cond_3

    :try_start_0
    const-string v2, "vendor.google.wireless_charger.IWirelessCharger/default"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    sget-object v4, Lvendor/google/wireless_charger/IWirelessCharger;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {v2, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    if-eqz v4, :cond_0

    instance-of v5, v4, Lvendor/google/wireless_charger/IWirelessCharger;

    if-eqz v5, :cond_0

    check-cast v4, Lvendor/google/wireless_charger/IWirelessCharger;

    goto :goto_0

    :cond_0
    new-instance v4, Lvendor/google/wireless_charger/IWirelessCharger$Stub$Proxy;

    invoke-direct {v4, v2}, Lvendor/google/wireless_charger/IWirelessCharger$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_0
    iput-object v4, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mWirelessCharger:Lvendor/google/wireless_charger/IWirelessCharger;

    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    const-string v4, "mWirelessCharger service connected!!!!"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mCallbackIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mWirelessCharger:Lvendor/google/wireless_charger/IWirelessCharger;

    check-cast v1, Lvendor/google/wireless_charger/IWirelessCharger$Stub$Proxy;

    invoke-virtual {v1, p0}, Lvendor/google/wireless_charger/IWirelessCharger$Stub$Proxy;->unregisterRtxCallback(Lvendor/google/wireless_charger/IWirelessChargerRtxStatusCallback;)V

    iget-object v1, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mWirelessCharger:Lvendor/google/wireless_charger/IWirelessCharger;

    check-cast v1, Lvendor/google/wireless_charger/IWirelessCharger$Stub$Proxy;

    invoke-virtual {v1, p0}, Lvendor/google/wireless_charger/IWirelessCharger$Stub$Proxy;->registerRtxCallback(Lvendor/google/wireless_charger/IWirelessChargerRtxStatusCallback;)V
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    iget v2, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    const-string v1, "RtxCallback is already registered..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "no wireless charger hal found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mWirelessCharger:Lvendor/google/wireless_charger/IWirelessCharger;

    :cond_3
    :goto_1
    return-void
.end method
