.class public final Lcom/google/android/systemui/power/batteryhealth/HealthManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final healthDebugEnabled:Z

.field public static final updatePeriod:Ljava/time/Duration;


# instance fields
.field public final alarmManager:Landroid/app/AlarmManager;

.field public final bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final bootCompletedReceiver:Lcom/google/android/systemui/power/batteryhealth/HealthManager$healthDebugReceiver$1;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final context:Landroid/content/Context;

.field public googleBattery:Lvendor/google/google_battery/IGoogleBattery;

.field public final healthDebugReceiver:Lcom/google/android/systemui/power/batteryhealth/HealthManager$healthDebugReceiver$1;

.field public final initializer:Lkotlinx/coroutines/StandaloneCoroutine;

.field public final mainScope:Lkotlinx/coroutines/CoroutineScope;

.field public final periodicUpdateEnabled:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager;->healthDebugEnabled:Z

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/power/batteryhealth/HealthManager;->updatePeriod:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager;->alarmManager:Landroid/app/AlarmManager;

    iput-object p3, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p4, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p5, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager;->mainScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f050007

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager;->periodicUpdateEnabled:Z

    new-instance p1, Lcom/google/android/systemui/power/batteryhealth/HealthManager$healthDebugReceiver$1;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/power/batteryhealth/HealthManager$healthDebugReceiver$1;-><init>(Lcom/google/android/systemui/power/batteryhealth/HealthManager;I)V

    iput-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager;->bootCompletedReceiver:Lcom/google/android/systemui/power/batteryhealth/HealthManager$healthDebugReceiver$1;

    new-instance p1, Lcom/google/android/systemui/power/batteryhealth/HealthManager$healthDebugReceiver$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/power/batteryhealth/HealthManager$healthDebugReceiver$1;-><init>(Lcom/google/android/systemui/power/batteryhealth/HealthManager;I)V

    iput-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager;->healthDebugReceiver:Lcom/google/android/systemui/power/batteryhealth/HealthManager$healthDebugReceiver$1;

    new-instance p1, Lcom/google/android/systemui/power/batteryhealth/HealthManager$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/power/batteryhealth/HealthManager$1;-><init>(Lcom/google/android/systemui/power/batteryhealth/HealthManager;Lkotlin/coroutines/Continuation;)V

    const/4 p3, 0x3

    invoke-static {p5, p2, p2, p1, p3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager;->initializer:Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public static synthetic getGoogleBattery$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getInitializer$annotations()V
    .locals 0

    return-void
.end method
