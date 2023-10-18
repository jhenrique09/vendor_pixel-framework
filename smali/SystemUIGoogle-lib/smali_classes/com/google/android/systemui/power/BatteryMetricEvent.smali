.class final enum Lcom/google/android/systemui/power/BatteryMetricEvent;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# static fields
.field public static final synthetic $VALUES:[Lcom/google/android/systemui/power/BatteryMetricEvent;

.field public static final enum ADAPTIVE_CHARGING_NOTIFICATION:Lcom/google/android/systemui/power/BatteryMetricEvent;

.field public static final enum ADAPTIVE_CHARGING_NOTIFICATION_BYPASS:Lcom/google/android/systemui/power/BatteryMetricEvent;

.field public static final enum BATTERY_DEFENDER_BYPASS_LIMIT:Lcom/google/android/systemui/power/BatteryMetricEvent;

.field public static final enum BATTERY_DEFENDER_BYPASS_LIMIT_FOR_TIPS:Lcom/google/android/systemui/power/BatteryMetricEvent;

.field public static final enum BATTERY_DEFENDER_NOTIFICATION:Lcom/google/android/systemui/power/BatteryMetricEvent;

.field public static final enum BATTERY_SAVER_DISABLED:Lcom/google/android/systemui/power/BatteryMetricEvent;

.field public static final enum BATTERY_SAVER_DISABLED_REASON:Lcom/google/android/systemui/power/BatteryMetricEvent;

.field public static final enum BATTERY_SAVER_ENABLED:Lcom/google/android/systemui/power/BatteryMetricEvent;

.field public static final enum BATTERY_SAVER_ENABLED_REASON:Lcom/google/android/systemui/power/BatteryMetricEvent;

.field public static final enum DELETE_ADAPTIVE_CHARGING_NOTIFICATION:Lcom/google/android/systemui/power/BatteryMetricEvent;

.field public static final enum DELETE_BATTERY_DEFENDER_NOTIFICATION:Lcom/google/android/systemui/power/BatteryMetricEvent;

.field public static final enum DELETE_INCOMPATIBLE_CHARGING_NOTIFICATION:Lcom/google/android/systemui/power/BatteryMetricEvent;

.field public static final enum EXTREME_LOW_BATTERY_NOTIFICATION:Lcom/google/android/systemui/power/BatteryMetricEvent;

.field public static final enum SAVER_CONFIRMATION_DIALOG:Lcom/google/android/systemui/power/BatteryMetricEvent;

.field public static final enum SAVER_CONFIRMATION_DIALOG_CANCEL:Lcom/google/android/systemui/power/BatteryMetricEvent;

.field public static final enum SAVER_CONFIRMATION_DIALOG_SETUP:Lcom/google/android/systemui/power/BatteryMetricEvent;

.field public static final enum SAVER_CONFIRMATION_DIALOG_TURN_ON:Lcom/google/android/systemui/power/BatteryMetricEvent;

.field public static final enum SEND_INCOMPATIBLE_CHARGING_NOTIFICATION:Lcom/google/android/systemui/power/BatteryMetricEvent;

.field public static final enum SEVERE_BATTERY_DIALOG:Lcom/google/android/systemui/power/BatteryMetricEvent;

.field public static final enum SEVERE_BATTERY_DIALOG_CANCEL:Lcom/google/android/systemui/power/BatteryMetricEvent;

.field public static final enum SEVERE_BATTERY_DIALOG_TURN_ON:Lcom/google/android/systemui/power/BatteryMetricEvent;


# instance fields
.field private final mId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 26

    new-instance v1, Lcom/google/android/systemui/power/BatteryMetricEvent;

    move-object v0, v1

    const/16 v2, 0x36c

    const-string v3, "BATTERY_DEFENDER_NOTIFICATION"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Lcom/google/android/systemui/power/BatteryMetricEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/systemui/power/BatteryMetricEvent;->BATTERY_DEFENDER_NOTIFICATION:Lcom/google/android/systemui/power/BatteryMetricEvent;

    new-instance v2, Lcom/google/android/systemui/power/BatteryMetricEvent;

    move-object v1, v2

    const/16 v3, 0x36d

    const-string v4, "BATTERY_DEFENDER_BYPASS_LIMIT"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v3}, Lcom/google/android/systemui/power/BatteryMetricEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/systemui/power/BatteryMetricEvent;->BATTERY_DEFENDER_BYPASS_LIMIT:Lcom/google/android/systemui/power/BatteryMetricEvent;

    new-instance v3, Lcom/google/android/systemui/power/BatteryMetricEvent;

    move-object v2, v3

    const/16 v4, 0x36e

    const-string v5, "BATTERY_DEFENDER_BYPASS_LIMIT_FOR_TIPS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/google/android/systemui/power/BatteryMetricEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/systemui/power/BatteryMetricEvent;->BATTERY_DEFENDER_BYPASS_LIMIT_FOR_TIPS:Lcom/google/android/systemui/power/BatteryMetricEvent;

    new-instance v4, Lcom/google/android/systemui/power/BatteryMetricEvent;

    move-object v3, v4

    const/16 v5, 0x4f9

    const-string v6, "DELETE_BATTERY_DEFENDER_NOTIFICATION"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v7, v5}, Lcom/google/android/systemui/power/BatteryMetricEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/systemui/power/BatteryMetricEvent;->DELETE_BATTERY_DEFENDER_NOTIFICATION:Lcom/google/android/systemui/power/BatteryMetricEvent;

    new-instance v5, Lcom/google/android/systemui/power/BatteryMetricEvent;

    move-object v4, v5

    const/16 v6, 0x4fa

    const-string v7, "ADAPTIVE_CHARGING_NOTIFICATION"

    const/4 v8, 0x4

    invoke-direct {v5, v7, v8, v6}, Lcom/google/android/systemui/power/BatteryMetricEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/systemui/power/BatteryMetricEvent;->ADAPTIVE_CHARGING_NOTIFICATION:Lcom/google/android/systemui/power/BatteryMetricEvent;

    new-instance v6, Lcom/google/android/systemui/power/BatteryMetricEvent;

    move-object v5, v6

    const/16 v7, 0x4fb

    const-string v8, "DELETE_ADAPTIVE_CHARGING_NOTIFICATION"

    const/4 v9, 0x5

    invoke-direct {v6, v8, v9, v7}, Lcom/google/android/systemui/power/BatteryMetricEvent;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/systemui/power/BatteryMetricEvent;->DELETE_ADAPTIVE_CHARGING_NOTIFICATION:Lcom/google/android/systemui/power/BatteryMetricEvent;

    new-instance v7, Lcom/google/android/systemui/power/BatteryMetricEvent;

    move-object v6, v7

    const/16 v8, 0x542

    const-string v9, "ADAPTIVE_CHARGING_NOTIFICATION_BYPASS"

    const/4 v10, 0x6

    invoke-direct {v7, v9, v10, v8}, Lcom/google/android/systemui/power/BatteryMetricEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/systemui/power/BatteryMetricEvent;->ADAPTIVE_CHARGING_NOTIFICATION_BYPASS:Lcom/google/android/systemui/power/BatteryMetricEvent;

    new-instance v8, Lcom/google/android/systemui/power/BatteryMetricEvent;

    move-object v7, v8

    const/16 v9, 0x4f7

    const-string v10, "SEND_INCOMPATIBLE_CHARGING_NOTIFICATION"

    const/4 v11, 0x7

    invoke-direct {v8, v10, v11, v9}, Lcom/google/android/systemui/power/BatteryMetricEvent;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/systemui/power/BatteryMetricEvent;->SEND_INCOMPATIBLE_CHARGING_NOTIFICATION:Lcom/google/android/systemui/power/BatteryMetricEvent;

    new-instance v9, Lcom/google/android/systemui/power/BatteryMetricEvent;

    move-object v8, v9

    const/16 v10, 0x4f8

    const-string v11, "DELETE_INCOMPATIBLE_CHARGING_NOTIFICATION"

    const/16 v12, 0x8

    invoke-direct {v9, v11, v12, v10}, Lcom/google/android/systemui/power/BatteryMetricEvent;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/systemui/power/BatteryMetricEvent;->DELETE_INCOMPATIBLE_CHARGING_NOTIFICATION:Lcom/google/android/systemui/power/BatteryMetricEvent;

    new-instance v10, Lcom/google/android/systemui/power/BatteryMetricEvent;

    move-object v9, v10

    const/16 v11, 0x3df

    const-string v12, "SEVERE_BATTERY_DIALOG"

    const/16 v13, 0x9

    invoke-direct {v10, v12, v13, v11}, Lcom/google/android/systemui/power/BatteryMetricEvent;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/systemui/power/BatteryMetricEvent;->SEVERE_BATTERY_DIALOG:Lcom/google/android/systemui/power/BatteryMetricEvent;

    new-instance v11, Lcom/google/android/systemui/power/BatteryMetricEvent;

    move-object v10, v11

    const/16 v12, 0x3e0

    const-string v13, "SEVERE_BATTERY_DIALOG_TURN_ON"

    const/16 v14, 0xa

    invoke-direct {v11, v13, v14, v12}, Lcom/google/android/systemui/power/BatteryMetricEvent;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/systemui/power/BatteryMetricEvent;->SEVERE_BATTERY_DIALOG_TURN_ON:Lcom/google/android/systemui/power/BatteryMetricEvent;

    new-instance v12, Lcom/google/android/systemui/power/BatteryMetricEvent;

    move-object v11, v12

    const/16 v13, 0x3e1

    const-string v14, "SEVERE_BATTERY_DIALOG_CANCEL"

    const/16 v15, 0xb

    invoke-direct {v12, v14, v15, v13}, Lcom/google/android/systemui/power/BatteryMetricEvent;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/systemui/power/BatteryMetricEvent;->SEVERE_BATTERY_DIALOG_CANCEL:Lcom/google/android/systemui/power/BatteryMetricEvent;

    new-instance v13, Lcom/google/android/systemui/power/BatteryMetricEvent;

    move-object v12, v13

    const/16 v14, 0x3e2

    const-string v15, "SEVERE_BATTERY_DIALOG_DISMISS_EVENT"

    move-object/from16 v22, v0

    const/16 v0, 0xc

    invoke-direct {v13, v15, v0, v14}, Lcom/google/android/systemui/power/BatteryMetricEvent;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/google/android/systemui/power/BatteryMetricEvent;

    move-object v13, v0

    const/16 v14, 0x543

    const-string v15, "SAVER_CONFIRMATION_DIALOG"

    move-object/from16 v23, v1

    const/16 v1, 0xd

    invoke-direct {v0, v15, v1, v14}, Lcom/google/android/systemui/power/BatteryMetricEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/systemui/power/BatteryMetricEvent;->SAVER_CONFIRMATION_DIALOG:Lcom/google/android/systemui/power/BatteryMetricEvent;

    new-instance v0, Lcom/google/android/systemui/power/BatteryMetricEvent;

    move-object v14, v0

    const/16 v1, 0x544

    const-string v15, "SAVER_CONFIRMATION_DIALOG_TURN_ON"

    move-object/from16 v24, v2

    const/16 v2, 0xe

    invoke-direct {v0, v15, v2, v1}, Lcom/google/android/systemui/power/BatteryMetricEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/systemui/power/BatteryMetricEvent;->SAVER_CONFIRMATION_DIALOG_TURN_ON:Lcom/google/android/systemui/power/BatteryMetricEvent;

    new-instance v0, Lcom/google/android/systemui/power/BatteryMetricEvent;

    move-object v15, v0

    const/16 v1, 0x545

    const-string v2, "SAVER_CONFIRMATION_DIALOG_CANCEL"

    move-object/from16 v25, v3

    const/16 v3, 0xf

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/systemui/power/BatteryMetricEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/systemui/power/BatteryMetricEvent;->SAVER_CONFIRMATION_DIALOG_CANCEL:Lcom/google/android/systemui/power/BatteryMetricEvent;

    new-instance v0, Lcom/google/android/systemui/power/BatteryMetricEvent;

    move-object/from16 v16, v0

    const/16 v1, 0x546

    const-string v2, "SAVER_CONFIRMATION_DIALOG_SETUP"

    const/16 v3, 0x10

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/systemui/power/BatteryMetricEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/systemui/power/BatteryMetricEvent;->SAVER_CONFIRMATION_DIALOG_SETUP:Lcom/google/android/systemui/power/BatteryMetricEvent;

    new-instance v0, Lcom/google/android/systemui/power/BatteryMetricEvent;

    move-object/from16 v17, v0

    const/16 v1, 0x547

    const-string v2, "EXTREME_LOW_BATTERY_NOTIFICATION"

    const/16 v3, 0x11

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/systemui/power/BatteryMetricEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/systemui/power/BatteryMetricEvent;->EXTREME_LOW_BATTERY_NOTIFICATION:Lcom/google/android/systemui/power/BatteryMetricEvent;

    new-instance v0, Lcom/google/android/systemui/power/BatteryMetricEvent;

    move-object/from16 v18, v0

    const/16 v1, 0x54f

    const-string v2, "BATTERY_SAVER_ENABLED"

    const/16 v3, 0x12

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/systemui/power/BatteryMetricEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/systemui/power/BatteryMetricEvent;->BATTERY_SAVER_ENABLED:Lcom/google/android/systemui/power/BatteryMetricEvent;

    new-instance v0, Lcom/google/android/systemui/power/BatteryMetricEvent;

    move-object/from16 v19, v0

    const/16 v1, 0x550

    const-string v2, "BATTERY_SAVER_ENABLED_REASON"

    const/16 v3, 0x13

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/systemui/power/BatteryMetricEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/systemui/power/BatteryMetricEvent;->BATTERY_SAVER_ENABLED_REASON:Lcom/google/android/systemui/power/BatteryMetricEvent;

    new-instance v0, Lcom/google/android/systemui/power/BatteryMetricEvent;

    move-object/from16 v20, v0

    const/16 v1, 0x55c

    const-string v2, "BATTERY_SAVER_DISABLED"

    const/16 v3, 0x14

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/systemui/power/BatteryMetricEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/systemui/power/BatteryMetricEvent;->BATTERY_SAVER_DISABLED:Lcom/google/android/systemui/power/BatteryMetricEvent;

    new-instance v0, Lcom/google/android/systemui/power/BatteryMetricEvent;

    move-object/from16 v21, v0

    const/16 v1, 0x55d

    const-string v2, "BATTERY_SAVER_DISABLED_REASON"

    const/16 v3, 0x15

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/systemui/power/BatteryMetricEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/systemui/power/BatteryMetricEvent;->BATTERY_SAVER_DISABLED_REASON:Lcom/google/android/systemui/power/BatteryMetricEvent;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    filled-new-array/range {v0 .. v21}, [Lcom/google/android/systemui/power/BatteryMetricEvent;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/power/BatteryMetricEvent;->$VALUES:[Lcom/google/android/systemui/power/BatteryMetricEvent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/systemui/power/BatteryMetricEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/systemui/power/BatteryMetricEvent;
    .locals 1

    const-class v0, Lcom/google/android/systemui/power/BatteryMetricEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/power/BatteryMetricEvent;

    return-object p0
.end method

.method public static values()[Lcom/google/android/systemui/power/BatteryMetricEvent;
    .locals 1

    sget-object v0, Lcom/google/android/systemui/power/BatteryMetricEvent;->$VALUES:[Lcom/google/android/systemui/power/BatteryMetricEvent;

    invoke-virtual {v0}, [Lcom/google/android/systemui/power/BatteryMetricEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/systemui/power/BatteryMetricEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/power/BatteryMetricEvent;->mId:I

    return p0
.end method
