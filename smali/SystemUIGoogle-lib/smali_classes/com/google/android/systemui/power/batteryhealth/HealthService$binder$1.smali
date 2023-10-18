.class public final Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/power/batteryhealth/HealthService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string p1, "com.google.android.systemui.power.batteryhealth.IHealthService"

    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final bridge synthetic onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1;->onTransact$com$google$android$systemui$power$batteryhealth$IHealthService$Stub(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0
.end method

.method public final onTransact$com$google$android$systemui$power$batteryhealth$IHealthService$Stub(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5

    const-string v0, "com.google.android.systemui.power.batteryhealth.IHealthService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_9

    const/4 v0, 0x0

    if-eq p1, v1, :cond_8

    const/4 v2, 0x2

    const-string v3, "com.google.android.systemui.power.batteryhealth.IHealthListener"

    const/4 v4, 0x3

    if-eq p1, v2, :cond_5

    if-eq p1, v4, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;

    invoke-static {p1}, Lcom/google/android/systemui/power/batteryhealth/HealthService;->access$ensureSupportedCallers(Lcom/google/android/systemui/power/batteryhealth/HealthService;)[Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$getIncompatibleChargerData$1;

    iget-object p0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;

    invoke-direct {p2, p1, p0, v0}, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$getIncompatibleChargerData$1;-><init>([Ljava/lang/String;Lcom/google/android/systemui/power/batteryhealth/HealthService;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/power/batteryhealth/IncompatibleChargerData;

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_3

    move-object p3, v0

    goto :goto_0

    :cond_3
    invoke-interface {p1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    if-eqz p3, :cond_4

    instance-of p4, p3, Lcom/google/android/systemui/power/batteryhealth/IHealthListener;

    if-eqz p4, :cond_4

    check-cast p3, Lcom/google/android/systemui/power/batteryhealth/IHealthListener;

    goto :goto_0

    :cond_4
    new-instance p3, Lcom/google/android/systemui/power/batteryhealth/IHealthListener$Stub$Proxy;

    invoke-direct {p3, p1}, Lcom/google/android/systemui/power/batteryhealth/IHealthListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    iget-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;

    invoke-static {p1}, Lcom/google/android/systemui/power/batteryhealth/HealthService;->access$ensureSupportedCallers(Lcom/google/android/systemui/power/batteryhealth/HealthService;)[Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;

    iget-object p2, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService;->mainScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance p4, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$unregisterHealthListener$1;

    invoke-direct {p4, p1, p0, p3, v0}, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$unregisterHealthListener$1;-><init>([Ljava/lang/String;Lcom/google/android/systemui/power/batteryhealth/HealthService;Lcom/google/android/systemui/power/batteryhealth/IHealthListener;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, v0, v0, p4, v4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_6

    move-object p3, v0

    goto :goto_1

    :cond_6
    invoke-interface {p1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    if-eqz p3, :cond_7

    instance-of p4, p3, Lcom/google/android/systemui/power/batteryhealth/IHealthListener;

    if-eqz p4, :cond_7

    check-cast p3, Lcom/google/android/systemui/power/batteryhealth/IHealthListener;

    goto :goto_1

    :cond_7
    new-instance p3, Lcom/google/android/systemui/power/batteryhealth/IHealthListener$Stub$Proxy;

    invoke-direct {p3, p1}, Lcom/google/android/systemui/power/batteryhealth/IHealthListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    iget-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;

    invoke-static {p1}, Lcom/google/android/systemui/power/batteryhealth/HealthService;->access$ensureSupportedCallers(Lcom/google/android/systemui/power/batteryhealth/HealthService;)[Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;

    iget-object p2, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService;->mainScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance p4, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$registerHealthListener$1;

    invoke-direct {p4, p1, p0, p3, v0}, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$registerHealthListener$1;-><init>([Ljava/lang/String;Lcom/google/android/systemui/power/batteryhealth/HealthService;Lcom/google/android/systemui/power/batteryhealth/IHealthListener;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, v0, v0, p4, v4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;

    invoke-static {p1}, Lcom/google/android/systemui/power/batteryhealth/HealthService;->access$ensureSupportedCallers(Lcom/google/android/systemui/power/batteryhealth/HealthService;)[Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$getHealthData$1;

    iget-object p0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;

    invoke-direct {p2, p1, p0, v0}, Lcom/google/android/systemui/power/batteryhealth/HealthService$binder$1$getHealthData$1;-><init>([Ljava/lang/String;Lcom/google/android/systemui/power/batteryhealth/HealthService;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/power/batteryhealth/HealthData;

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    :goto_2
    return v1

    :cond_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method
