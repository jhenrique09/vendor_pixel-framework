.class public Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/elmyra/sensors/GestureSensor;


# static fields
.field private static final DISABLE_SETTING:Ljava/lang/String; = "com.google.android.systemui.elmyra.disable_jni"

.field private static final SENSOR_RATE:I = 0x4e20

.field private static final TAG:Ljava/lang/String; = "Elmyra/JNIGestureSensor"

.field private static sLibraryLoaded:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;

.field private final mGestureConfiguration:Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;

.field private mIsListening:Z

.field private final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mNativeService:J

.field private mSensorCount:I

.field private final mSensorStringType:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$MRosK61o4mdLGpdEllt2Z-WhfDw(Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;->lambda$new$0(Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmController(Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;)Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;->mController:Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "elmyra"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;->sLibraryLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not load JNI component: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Elmyra/JNIGestureSensor"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;->sLibraryLoaded:Z

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 9

    const-string v0, "touch_2_sensitivity"

    const-string v1, "Elmyra/JNIGestureSensor"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor$1;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor$1;-><init>(Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;)V

    iput-object v2, p0, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;

    const/4 v4, 0x0

    invoke-direct {v3, p1, p0, p2, v4}, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;-><init>(Landroid/content/Context;Lcom/google/android/systemui/elmyra/sensors/GestureSensor;Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;Lcom/google/android/systemui/elmyra/SnapshotConfiguration;)V

    iput-object v3, p0, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;->mController:Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f13033c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;->mSensorStringType:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;->mGestureConfiguration:Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;

    new-instance v3, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;)V

    iput-object v3, p2, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->mListener:Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration$Listener;

    invoke-virtual {p3, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-static {p1}, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;->getChassisAsset(Landroid/content/Context;)[B

    move-result-object p1

    if-eqz p1, :cond_2

    array-length p2, p1

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    :try_start_0
    new-instance p3, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;

    invoke-direct {p3}, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;-><init>()V

    invoke-static {p3, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    iget-object v2, p3, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;->sensors:[Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;

    array-length v2, v2

    iput v2, p0, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;->mSensorCount:I

    move v2, p2

    :goto_0
    iget v3, p0, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;->mSensorCount:I

    if-ge v2, v3, :cond_1

    const-string v3, "Elmyra/SensorCalibration"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    const-string v6, "/persist/sensors/elmyra/calibration.%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, p2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/google/android/systemui/elmyra/sensors/config/SensorCalibration;

    invoke-direct {v6, v5}, Lcom/google/android/systemui/elmyra/sensors/config/SensorCalibration;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_0
    move-exception v5

    :try_start_2
    const-string v6, "Could not open calibration file"

    invoke-static {v3, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v5

    const-string v6, "Could not find calibration file"

    invoke-static {v3, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    move-object v6, v4

    :goto_2
    if-eqz v6, :cond_0

    iget-object v3, v6, Lcom/google/android/systemui/elmyra/sensors/config/SensorCalibration;->mProperties:Ljava/util/Map;

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p3, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;->sensors:[Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;

    aget-object v3, v3, v2

    iget-object v5, v6, Lcom/google/android/systemui/elmyra/sensors/config/SensorCalibration;->mProperties:Ljava/util/Map;

    check-cast v5, Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    div-float/2addr v6, v5

    iput v6, v3, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;->sensitivity:F

    goto :goto_3

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading calibration for sensor "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;->createNativeService([B)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    const-string p3, "Error reading chassis file"

    invoke-static {v1, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput p2, p0, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;->mSensorCount:I

    :cond_2
    :goto_4
    return-void
.end method

.method private native createNativeService([B)Z
.end method

.method private native destroyNativeService()V
.end method

.method private static getChassisAsset(Landroid/content/Context;)[B
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f120015

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;->readAllBytes(Ljava/io/InputStream;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Elmyra/JNIGestureSensor"

    const-string v1, "Could not load chassis resource"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.google.android.systemui.elmyra.disable_jni"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    sget-boolean v0, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;->sLibraryLoaded:Z

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-static {p0}, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;->getChassisAsset(Landroid/content/Context;)[B

    move-result-object p0

    if-eqz p0, :cond_3

    array-length p0, p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v2
.end method

.method private synthetic lambda$new$0(Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;->updateConfiguration()V

    return-void
.end method

.method private onGestureDetected()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;->mController:Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->onGestureDetected(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V

    return-void
.end method

.method private onGestureProgress(F)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;->mController:Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->onGestureProgress(F)V

    return-void
.end method

.method private static readAllBytes(Ljava/io/InputStream;)[B
    .locals 4

    const/16 v0, 0x400

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    sub-int v3, v0, v2

    invoke-virtual {p0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_0

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    if-gez v3, :cond_2

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    :goto_1
    return-object v1

    :cond_2
    shl-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    goto :goto_0
.end method

.method private native setGestureDetector([B)Z
.end method

.method private native startListeningNative(Ljava/lang/String;I)Z
.end method

.method private native stopListeningNative()V
.end method

.method private updateConfiguration()V
    .locals 0

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;->destroyNativeService()V

    return-void
.end method

.method public isListening()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;->mIsListening:Z

    return p0
.end method

.method public setGestureListener(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$Listener;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;->mController:Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mGestureListener:Lcom/google/android/systemui/elmyra/sensors/GestureSensor$Listener;

    return-void
.end method

.method public startListening()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;->mIsListening:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;->mSensorStringType:Ljava/lang/String;

    const/16 v1, 0x4e20

    invoke-direct {p0, v0, v1}, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;->startListeningNative(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;->updateConfiguration()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;->mIsListening:Z

    :cond_0
    return-void
.end method

.method public stopListening()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;->mIsListening:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;->stopListeningNative()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;->mIsListening:Z

    :cond_0
    return-void
.end method
