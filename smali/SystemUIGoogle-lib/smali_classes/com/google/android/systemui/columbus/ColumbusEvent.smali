.class public final enum Lcom/google/android/systemui/columbus/ColumbusEvent;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# static fields
.field public static final synthetic $VALUES:[Lcom/google/android/systemui/columbus/ColumbusEvent;

.field public static final enum COLUMBUS_DOUBLE_TAP_DETECTED:Lcom/google/android/systemui/columbus/ColumbusEvent;

.field public static final enum COLUMBUS_INVOKED_ASSISTANT:Lcom/google/android/systemui/columbus/ColumbusEvent;

.field public static final enum COLUMBUS_INVOKED_FLASHLIGHT_TOGGLE:Lcom/google/android/systemui/columbus/ColumbusEvent;

.field public static final enum COLUMBUS_INVOKED_LAUNCH_APP:Lcom/google/android/systemui/columbus/ColumbusEvent;

.field public static final enum COLUMBUS_INVOKED_LAUNCH_APP_SECURE:Lcom/google/android/systemui/columbus/ColumbusEvent;

.field public static final enum COLUMBUS_INVOKED_LAUNCH_SHORTCUT:Lcom/google/android/systemui/columbus/ColumbusEvent;

.field public static final enum COLUMBUS_INVOKED_NOTIFICATION_SHADE_CLOSE:Lcom/google/android/systemui/columbus/ColumbusEvent;

.field public static final enum COLUMBUS_INVOKED_NOTIFICATION_SHADE_OPEN:Lcom/google/android/systemui/columbus/ColumbusEvent;

.field public static final enum COLUMBUS_INVOKED_ON_SETTINGS:Lcom/google/android/systemui/columbus/ColumbusEvent;

.field public static final enum COLUMBUS_INVOKED_OVERVIEW:Lcom/google/android/systemui/columbus/ColumbusEvent;

.field public static final enum COLUMBUS_INVOKED_PAUSE_MEDIA:Lcom/google/android/systemui/columbus/ColumbusEvent;

.field public static final enum COLUMBUS_INVOKED_PLAY_MEDIA:Lcom/google/android/systemui/columbus/ColumbusEvent;

.field public static final enum COLUMBUS_INVOKED_SCREENSHOT:Lcom/google/android/systemui/columbus/ColumbusEvent;

.field public static final enum COLUMBUS_MODE_HIGH_POWER_ACTIVE:Lcom/google/android/systemui/columbus/ColumbusEvent;

.field public static final enum COLUMBUS_MODE_INACTIVE:Lcom/google/android/systemui/columbus/ColumbusEvent;

.field public static final enum COLUMBUS_MODE_LOW_POWER_ACTIVE:Lcom/google/android/systemui/columbus/ColumbusEvent;

.field public static final enum COLUMBUS_RETARGET_APPROVED:Lcom/google/android/systemui/columbus/ColumbusEvent;

.field public static final enum COLUMBUS_RETARGET_DIALOG_SHOWN:Lcom/google/android/systemui/columbus/ColumbusEvent;

.field public static final enum COLUMBUS_RETARGET_FOLLOW_ON_APPROVED:Lcom/google/android/systemui/columbus/ColumbusEvent;

.field public static final enum COLUMBUS_RETARGET_FOLLOW_ON_NOT_APPROVED:Lcom/google/android/systemui/columbus/ColumbusEvent;

.field public static final enum COLUMBUS_RETARGET_NOT_APPROVED:Lcom/google/android/systemui/columbus/ColumbusEvent;


# instance fields
.field private final id:I


# direct methods
.method public static constructor <clinit>()V
    .locals 26

    new-instance v1, Lcom/google/android/systemui/columbus/ColumbusEvent;

    move-object v0, v1

    const-string v2, "COLUMBUS_UNKNOWN_EVENT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/systemui/columbus/ColumbusEvent;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lcom/google/android/systemui/columbus/ColumbusEvent;

    move-object v1, v2

    const/16 v3, 0x274

    const-string v4, "COLUMBUS_DOUBLE_TAP_DETECTED"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v3}, Lcom/google/android/systemui/columbus/ColumbusEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_DOUBLE_TAP_DETECTED:Lcom/google/android/systemui/columbus/ColumbusEvent;

    new-instance v3, Lcom/google/android/systemui/columbus/ColumbusEvent;

    move-object v2, v3

    const/16 v4, 0x275

    const-string v5, "COLUMBUS_INVOKED_ASSISTANT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/google/android/systemui/columbus/ColumbusEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_ASSISTANT:Lcom/google/android/systemui/columbus/ColumbusEvent;

    new-instance v4, Lcom/google/android/systemui/columbus/ColumbusEvent;

    move-object v3, v4

    const/16 v5, 0x276

    const-string v6, "COLUMBUS_INVOKED_SCREENSHOT"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v7, v5}, Lcom/google/android/systemui/columbus/ColumbusEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_SCREENSHOT:Lcom/google/android/systemui/columbus/ColumbusEvent;

    new-instance v5, Lcom/google/android/systemui/columbus/ColumbusEvent;

    move-object v4, v5

    const/16 v6, 0x277

    const-string v7, "COLUMBUS_INVOKED_PLAY_MEDIA"

    const/4 v8, 0x4

    invoke-direct {v5, v7, v8, v6}, Lcom/google/android/systemui/columbus/ColumbusEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_PLAY_MEDIA:Lcom/google/android/systemui/columbus/ColumbusEvent;

    new-instance v6, Lcom/google/android/systemui/columbus/ColumbusEvent;

    move-object v5, v6

    const/16 v7, 0x27f

    const-string v8, "COLUMBUS_INVOKED_PAUSE_MEDIA"

    const/4 v9, 0x5

    invoke-direct {v6, v8, v9, v7}, Lcom/google/android/systemui/columbus/ColumbusEvent;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_PAUSE_MEDIA:Lcom/google/android/systemui/columbus/ColumbusEvent;

    new-instance v7, Lcom/google/android/systemui/columbus/ColumbusEvent;

    move-object v6, v7

    const/16 v8, 0x278

    const-string v9, "COLUMBUS_INVOKED_OVERVIEW"

    const/4 v10, 0x6

    invoke-direct {v7, v9, v10, v8}, Lcom/google/android/systemui/columbus/ColumbusEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_OVERVIEW:Lcom/google/android/systemui/columbus/ColumbusEvent;

    new-instance v8, Lcom/google/android/systemui/columbus/ColumbusEvent;

    move-object v7, v8

    const/16 v9, 0x279

    const-string v10, "COLUMBUS_INVOKED_NOTIFICATION_SHADE_OPEN"

    const/4 v11, 0x7

    invoke-direct {v8, v10, v11, v9}, Lcom/google/android/systemui/columbus/ColumbusEvent;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_NOTIFICATION_SHADE_OPEN:Lcom/google/android/systemui/columbus/ColumbusEvent;

    new-instance v9, Lcom/google/android/systemui/columbus/ColumbusEvent;

    move-object v8, v9

    const/16 v10, 0x27a

    const-string v11, "COLUMBUS_INVOKED_NOTIFICATION_SHADE_CLOSE"

    const/16 v12, 0x8

    invoke-direct {v9, v11, v12, v10}, Lcom/google/android/systemui/columbus/ColumbusEvent;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_NOTIFICATION_SHADE_CLOSE:Lcom/google/android/systemui/columbus/ColumbusEvent;

    new-instance v10, Lcom/google/android/systemui/columbus/ColumbusEvent;

    move-object v9, v10

    const/16 v11, 0x32f

    const-string v12, "COLUMBUS_INVOKED_LAUNCH_APP"

    const/16 v13, 0x9

    invoke-direct {v10, v12, v13, v11}, Lcom/google/android/systemui/columbus/ColumbusEvent;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_LAUNCH_APP:Lcom/google/android/systemui/columbus/ColumbusEvent;

    new-instance v11, Lcom/google/android/systemui/columbus/ColumbusEvent;

    move-object v10, v11

    const/16 v12, 0x330

    const-string v13, "COLUMBUS_INVOKED_LAUNCH_SHORTCUT"

    const/16 v14, 0xa

    invoke-direct {v11, v13, v14, v12}, Lcom/google/android/systemui/columbus/ColumbusEvent;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_LAUNCH_SHORTCUT:Lcom/google/android/systemui/columbus/ColumbusEvent;

    new-instance v12, Lcom/google/android/systemui/columbus/ColumbusEvent;

    move-object v11, v12

    const/16 v13, 0x382

    const-string v14, "COLUMBUS_INVOKED_LAUNCH_APP_SECURE"

    const/16 v15, 0xb

    invoke-direct {v12, v14, v15, v13}, Lcom/google/android/systemui/columbus/ColumbusEvent;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_LAUNCH_APP_SECURE:Lcom/google/android/systemui/columbus/ColumbusEvent;

    new-instance v13, Lcom/google/android/systemui/columbus/ColumbusEvent;

    move-object v12, v13

    const/16 v14, 0x3a4

    const-string v15, "COLUMBUS_INVOKED_FLASHLIGHT_TOGGLE"

    move-object/from16 v22, v0

    const/16 v0, 0xc

    invoke-direct {v13, v15, v0, v14}, Lcom/google/android/systemui/columbus/ColumbusEvent;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_FLASHLIGHT_TOGGLE:Lcom/google/android/systemui/columbus/ColumbusEvent;

    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusEvent;

    move-object v13, v0

    const/16 v14, 0x331

    const-string v15, "COLUMBUS_INVOKED_ON_SETTINGS"

    move-object/from16 v23, v1

    const/16 v1, 0xd

    invoke-direct {v0, v15, v1, v14}, Lcom/google/android/systemui/columbus/ColumbusEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_ON_SETTINGS:Lcom/google/android/systemui/columbus/ColumbusEvent;

    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusEvent;

    move-object v14, v0

    const/16 v1, 0x27b

    const-string v15, "COLUMBUS_MODE_LOW_POWER_ACTIVE"

    move-object/from16 v24, v2

    const/16 v2, 0xe

    invoke-direct {v0, v15, v2, v1}, Lcom/google/android/systemui/columbus/ColumbusEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_MODE_LOW_POWER_ACTIVE:Lcom/google/android/systemui/columbus/ColumbusEvent;

    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusEvent;

    move-object v15, v0

    const/16 v1, 0x27c

    const-string v2, "COLUMBUS_MODE_HIGH_POWER_ACTIVE"

    move-object/from16 v25, v3

    const/16 v3, 0xf

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/systemui/columbus/ColumbusEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_MODE_HIGH_POWER_ACTIVE:Lcom/google/android/systemui/columbus/ColumbusEvent;

    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusEvent;

    move-object/from16 v16, v0

    const/16 v1, 0x27d

    const-string v2, "COLUMBUS_MODE_INACTIVE"

    const/16 v3, 0x10

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/systemui/columbus/ColumbusEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_MODE_INACTIVE:Lcom/google/android/systemui/columbus/ColumbusEvent;

    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusEvent;

    move-object/from16 v17, v0

    const/16 v1, 0x383

    const-string v2, "COLUMBUS_RETARGET_DIALOG_SHOWN"

    const/16 v3, 0x11

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/systemui/columbus/ColumbusEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_RETARGET_DIALOG_SHOWN:Lcom/google/android/systemui/columbus/ColumbusEvent;

    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusEvent;

    move-object/from16 v18, v0

    const/16 v1, 0x384

    const-string v2, "COLUMBUS_RETARGET_APPROVED"

    const/16 v3, 0x12

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/systemui/columbus/ColumbusEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_RETARGET_APPROVED:Lcom/google/android/systemui/columbus/ColumbusEvent;

    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusEvent;

    move-object/from16 v19, v0

    const/16 v1, 0x385

    const-string v2, "COLUMBUS_RETARGET_NOT_APPROVED"

    const/16 v3, 0x13

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/systemui/columbus/ColumbusEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_RETARGET_NOT_APPROVED:Lcom/google/android/systemui/columbus/ColumbusEvent;

    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusEvent;

    move-object/from16 v20, v0

    const/16 v1, 0x386

    const-string v2, "COLUMBUS_RETARGET_FOLLOW_ON_APPROVED"

    const/16 v3, 0x14

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/systemui/columbus/ColumbusEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_RETARGET_FOLLOW_ON_APPROVED:Lcom/google/android/systemui/columbus/ColumbusEvent;

    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusEvent;

    move-object/from16 v21, v0

    const/16 v1, 0x387

    const-string v2, "COLUMBUS_RETARGET_FOLLOW_ON_NOT_APPROVED"

    const/16 v3, 0x15

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/systemui/columbus/ColumbusEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_RETARGET_FOLLOW_ON_NOT_APPROVED:Lcom/google/android/systemui/columbus/ColumbusEvent;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    filled-new-array/range {v0 .. v21}, [Lcom/google/android/systemui/columbus/ColumbusEvent;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/columbus/ColumbusEvent;->$VALUES:[Lcom/google/android/systemui/columbus/ColumbusEvent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/systemui/columbus/ColumbusEvent;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/systemui/columbus/ColumbusEvent;
    .locals 1

    const-class v0, Lcom/google/android/systemui/columbus/ColumbusEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/ColumbusEvent;

    return-object p0
.end method

.method public static values()[Lcom/google/android/systemui/columbus/ColumbusEvent;
    .locals 1

    sget-object v0, Lcom/google/android/systemui/columbus/ColumbusEvent;->$VALUES:[Lcom/google/android/systemui/columbus/ColumbusEvent;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/systemui/columbus/ColumbusEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/columbus/ColumbusEvent;->id:I

    return p0
.end method
