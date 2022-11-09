
with source as (

    select * from {{ source('raw_salesforce', 'da_scoop_composer_black_list_share') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        access_level,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        parent_id,
        row_cause,
        user_or_group_id

    from source

)

select * from renamed
