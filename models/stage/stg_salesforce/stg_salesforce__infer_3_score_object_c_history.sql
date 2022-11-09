
with source as (

    select * from {{ source('raw_salesforce', 'infer_3_score_object_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp,
        infer_3_entity_hashes_c,
        infer_3_entity_ids_c,
        infer_3_entity_type_c,
        infer_3_is_open_c,
        infer_3_rating_0_c,
        infer_3_rating_1_c,
        infer_3_rating_2_c,
        infer_3_rating_3_c,
        infer_3_rating_4_c,
        infer_3_rating_5_c,
        infer_3_rating_6_c,
        infer_3_score_0_c,
        infer_3_score_10_c,
        infer_3_score_11_c,
        infer_3_score_12_c,
        infer_3_score_13_c,
        infer_3_score_14_c,
        infer_3_score_15_c,
        infer_3_score_16_c,
        infer_3_score_17_c,
        infer_3_score_18_c,
        infer_3_score_1_c,
        infer_3_score_2_c,
        infer_3_score_3_c,
        infer_3_score_4_c,
        infer_3_score_5_c,
        infer_3_score_6_c,
        infer_3_score_7_c,
        infer_3_score_8_c,
        infer_3_score_9_c,
        infer_3_score_field_c,
        infer_3_score_modified_dates_c

    from source

)

select * from renamed
