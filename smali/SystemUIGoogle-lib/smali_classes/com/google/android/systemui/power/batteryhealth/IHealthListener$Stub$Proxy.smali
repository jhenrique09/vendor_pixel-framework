.class public final Lcom/google/android/systemui/power/batteryhealth/IHealthListener$Stub$Proxy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/power/batteryhealth/IHealthListener;


# instance fields
.field public final mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/IHealthListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/power/batteryhealth/IHealthListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method
