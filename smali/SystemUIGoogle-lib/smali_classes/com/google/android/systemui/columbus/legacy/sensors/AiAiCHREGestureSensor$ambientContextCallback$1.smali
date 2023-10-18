.class public final Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor$ambientContextCallback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/ambientcontext/AmbientContextCallback;


# instance fields
.field public final synthetic $clock:Lcom/android/systemui/util/time/SystemClock;

.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/time/SystemClock;Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor$ambientContextCallback$1;->$clock:Lcom/android/systemui/util/time/SystemClock;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor$ambientContextCallback$1;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvents(Ljava/util/List;)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received events from AmbientContextManager: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Columbus/GestureSensor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/ambientcontext/AmbientContextEvent;

    invoke-virtual {v6}, Landroid/app/ambientcontext/AmbientContextEvent;->getEventType()I

    move-result v6

    if-ne v6, v4, :cond_1

    move v6, v3

    goto :goto_0

    :cond_1
    move v6, v5

    :goto_0
    if-eqz v6, :cond_0

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    check-cast v0, Landroid/app/ambientcontext/AmbientContextEvent;

    if-nez v0, :cond_3

    const-string p0, "Receiving events but not EVENT_BACK_DOUBLE_TAP"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_3
    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor$ambientContextCallback$1;->$clock:Lcom/android/systemui/util/time/SystemClock;

    check-cast p1, Lcom/android/systemui/util/time/SystemClockImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Landroid/app/ambientcontext/AmbientContextEvent;->getStartTime()Ljava/time/Instant;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    sub-long/2addr v6, v8

    sget-object p1, Lcom/google/android/systemui/columbus/legacy/sensors/ColumbusMetrics;->ISTATS_INSTANCE_NAME:Ljava/lang/String;

    new-instance p1, Landroid/frameworks/stats/VendorAtom;

    invoke-direct {p1}, Landroid/frameworks/stats/VendorAtom;-><init>()V

    const-string v1, ""

    iput-object v1, p1, Landroid/frameworks/stats/VendorAtom;->reverseDomainName:Ljava/lang/String;

    const v1, 0x1872b

    iput v1, p1, Landroid/frameworks/stats/VendorAtom;->atomId:I

    new-instance v1, Landroid/frameworks/stats/VendorAtomValue;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v1, v3, v6}, Landroid/frameworks/stats/VendorAtomValue;-><init>(ILjava/lang/Object;)V

    filled-new-array {v1}, [Landroid/frameworks/stats/VendorAtomValue;

    move-result-object v1

    iput-object v1, p1, Landroid/frameworks/stats/VendorAtom;->values:[Landroid/frameworks/stats/VendorAtomValue;

    const-string v1, "Columbus/Metrics"

    const-string v6, "Report vendor atom OK, "

    :try_start_0
    sget-object v7, Lcom/google/android/systemui/columbus/legacy/sensors/ColumbusMetrics;->ISTATS_INSTANCE_NAME:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v7, "IStats is not registered"

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    invoke-static {v7}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    sget v8, Landroid/frameworks/stats/IStats$Stub;->$r8$clinit:I

    if-nez v7, :cond_5

    goto :goto_2

    :cond_5
    sget-object v2, Landroid/frameworks/stats/IStats;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {v7, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    if-eqz v2, :cond_6

    instance-of v8, v2, Landroid/frameworks/stats/IStats;

    if-eqz v8, :cond_6

    check-cast v2, Landroid/frameworks/stats/IStats;

    goto :goto_2

    :cond_6
    new-instance v2, Landroid/frameworks/stats/IStats$Stub$Proxy;

    invoke-direct {v2, v7}, Landroid/frameworks/stats/IStats$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_2
    if-nez v2, :cond_7

    goto :goto_3

    :cond_7
    check-cast v2, Landroid/frameworks/stats/IStats$Stub$Proxy;

    invoke-virtual {v2, p1}, Landroid/frameworks/stats/IStats$Stub$Proxy;->reportVendorAtom(Landroid/frameworks/stats/VendorAtom;)V

    sget-boolean v2, Lcom/google/android/systemui/columbus/legacy/sensors/ColumbusMetrics;->DEBUG:Z

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Failed to log atom to IStats service, "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_3
    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor$ambientContextCallback$1;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/AiAiCHREGestureSensor;

    invoke-virtual {v0}, Landroid/app/ambientcontext/AmbientContextEvent;->getEventType()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne p1, v4, :cond_9

    goto :goto_4

    :cond_9
    move v3, v5

    :goto_4
    new-instance p1, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor$DetectionProperties;

    invoke-direct {p1, v5}, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor$DetectionProperties;-><init>(Z)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;->listener:Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$gestureSensorListener$1;

    if-eqz p0, :cond_a

    invoke-virtual {p0, v3, p1}, Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$gestureSensorListener$1;->onGestureDetected(ILcom/google/android/systemui/columbus/legacy/sensors/GestureSensor$DetectionProperties;)V

    :cond_a
    :goto_5
    return-void
.end method

.method public final onRegistrationComplete(I)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "registerObserver completes with status: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Columbus/GestureSensor"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
