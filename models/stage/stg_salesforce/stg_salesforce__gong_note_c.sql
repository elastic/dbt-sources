
with source as (

    select * from {{ source('raw_salesforce', 'gong_note_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        gong_comment_c,
        gong_commentor_c,
        gong_gong_interaction_c,
        gong_point_in_time_c,
        gong_type_c,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
