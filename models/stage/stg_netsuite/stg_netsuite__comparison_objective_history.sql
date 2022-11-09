
with source as (

    select * from {{ source('raw_netsuite', 'comparison_objective_history') }}

),

renamed as (

    select
        comparison_objective_extid,
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name

    from source

)

select * from renamed
