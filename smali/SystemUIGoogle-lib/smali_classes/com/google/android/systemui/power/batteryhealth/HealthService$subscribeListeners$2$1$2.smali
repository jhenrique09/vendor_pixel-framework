.class final Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $pair:Lkotlin/Pair;


# direct methods
.method public constructor <init>(Lkotlin/Pair;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2$1$2;->$pair:Lkotlin/Pair;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/google/android/systemui/power/batteryhealth/IHealthListener;

    iget-object p0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2$1$2;->$pair:Lkotlin/Pair;

    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/SharedPreferences;

    const-string v0, "perf_index"

    const/4 v1, -0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    check-cast p1, Lcom/google/android/systemui/power/batteryhealth/IHealthListener$Stub$Proxy;

    iget-object v0, p1, Lcom/google/android/systemui/power/batteryhealth/IHealthListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.google.android.systemui.power.batteryhealth.IHealthListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p1, Lcom/google/android/systemui/power/batteryhealth/IHealthListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
