.class public final Lcom/google/android/systemui/gesture/BackGestureTfClassifierProviderGoogle;
.super Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;
.source ""


# static fields
.field public static final sModelLoadingLock:Ljava/lang/Object;


# instance fields
.field public mInterpreter:Lorg/tensorflow/lite/Interpreter;

.field public final mModelFile:Ljava/lang/String;

.field public mModelLoaded:Z

.field public final mOutput:[[F

.field public final mOutputMap:Ljava/util/Map;

.field public mVocab:Ljava/util/Map;

.field public final mVocabFile:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/systemui/gesture/BackGestureTfClassifierProviderGoogle;->sModelLoadingLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/systemui/gesture/BackGestureTfClassifierProviderGoogle;->mInterpreter:Lorg/tensorflow/lite/Interpreter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/gesture/BackGestureTfClassifierProviderGoogle;->mModelLoaded:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/systemui/gesture/BackGestureTfClassifierProviderGoogle;->mOutputMap:Ljava/util/Map;

    const/4 v2, 0x1

    filled-new-array {v2, v2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, p0, Lcom/google/android/systemui/gesture/BackGestureTfClassifierProviderGoogle;->mOutput:[[F

    const-string v3, ".tflite"

    invoke-virtual {p1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/systemui/gesture/BackGestureTfClassifierProviderGoogle;->mModelFile:Ljava/lang/String;

    const-string v3, ".vocab"

    invoke-virtual {p1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/gesture/BackGestureTfClassifierProviderGoogle;->mVocabFile:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final loadModel(Landroid/content/res/AssetManager;)V
    .locals 8

    :try_start_0
    const-string v0, "BackGestureTfClassifierProviderGoogle#modelLoading"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/systemui/gesture/BackGestureTfClassifierProviderGoogle;->mModelFile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v0, Lorg/tensorflow/lite/Interpreter;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/tensorflow/lite/Interpreter;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/google/android/systemui/gesture/BackGestureTfClassifierProviderGoogle;->mInterpreter:Lorg/tensorflow/lite/Interpreter;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/gesture/BackGestureTfClassifierProviderGoogle;->mModelLoaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_0

    :try_start_3
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_5
    const-string v0, "BackGestureTfClassifier"

    const-string v1, "Load TFLite file error:"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/systemui/gesture/BackGestureTfClassifierProviderGoogle;->mModelLoaded:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public final readVocab(Landroid/content/res/AssetManager;)Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object p0, p0, Lcom/google/android/systemui/gesture/BackGestureTfClassifierProviderGoogle;->mVocabFile:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :cond_0
    :try_start_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "BackGestureTfClassifier"

    const-string v1, "Load vocab file error: "

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-object v0
.end method
