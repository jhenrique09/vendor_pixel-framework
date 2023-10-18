.class public final Lcom/google/android/systemui/power/batteryhealth/HealthManager$deathRecipient$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final INSTANCE:Lcom/google/android/systemui/power/batteryhealth/HealthManager$deathRecipient$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$deathRecipient$1;

    invoke-direct {v0}, Lcom/google/android/systemui/power/batteryhealth/HealthManager$deathRecipient$1;-><init>()V

    sput-object v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$deathRecipient$1;->INSTANCE:Lcom/google/android/systemui/power/batteryhealth/HealthManager$deathRecipient$1;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    const-string p0, "HealthManager"

    const-string v0, "HW binder died"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
